<?php
/**
 * @package     Joomla.Site
 * @subpackage  com_users
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

JHtml::_('behavior.keepalive');
JHtml::_('behavior.formvalidator');
?>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?libraries=places&sensor=false"></script>
<script type="text/javascript">
var geocoder = new google.maps.Geocoder();
var markers = [];
function geocodePosition(pos) {
  geocoder.geocode({
    latLng: pos
  }, function(responses) {
    if (responses && responses.length > 0) {
      updateMarkerAddress(responses[0].formatted_address);
    } else {
      updateMarkerAddress('Cannot determine address at this location.');
    }
  });
}

function updateMarkerStatus(str) {
  document.getElementById('markerStatus').innerHTML = str;
}

function updateMarkerPosition(latLng) {
  document.getElementById('jform_latitude').setAttribute('value' , latLng.lat());
  document.getElementById('jform_longitude').setAttribute('value' , latLng.lng());
}

function updateMarkerAddress(str) {
  document.getElementById('address').innerHTML = str;
}

function initialize() {
  var latLng = new google.maps.LatLng(-34.397, 150.644);
  var map = new google.maps.Map(document.getElementById('mapCanvas'), {
    zoom: 8,
    center: latLng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  });
  var marker = new google.maps.Marker({
    position: latLng,
    title: 'Point A',
    map: map,
    draggable: true
  });
  
  var input = /** @type {HTMLInputElement} */ (
    document.getElementById('jform_businessaddress'));
  //map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

  var searchBox = new google.maps.places.SearchBox(
    /** @type {HTMLInputElement} */
    (input));
  
  // Update current position info.
  updateMarkerPosition(latLng);
  geocodePosition(latLng);
  
  // Add dragging event listeners.
  google.maps.event.addListener(marker, 'dragstart', function() {
    updateMarkerAddress('Dragging...');
  });
  
  google.maps.event.addListener(marker, 'drag', function() {
    updateMarkerStatus('Dragging...');
    updateMarkerPosition(marker.getPosition());
  });
  
  google.maps.event.addListener(marker, 'dragend', function() {
    updateMarkerStatus('Drag ended');
    geocodePosition(marker.getPosition());
  });
  
  google.maps.event.addListener(searchBox, 'places_changed', function() {
    var places = searchBox.getPlaces();

    for (var i = 0, marker; marker = markers[i]; i++) {
      marker.setMap(null);
    }

    // For each place, get the icon, place name, and location.
    markers = [];
    var bounds = new google.maps.LatLngBounds();
    var place = null;
    var viewport = null;
    for (var i = 0; place = places[i]; i++) {
      var image = {
        url: place.icon,
        size: new google.maps.Size(71, 71),
        origin: new google.maps.Point(0, 0),
        anchor: new google.maps.Point(17, 34),
        scaledSize: new google.maps.Size(25, 25)
      };
//      if(place.geometry.location)
//      {
//          initialize2(place.geometry.location, place.name)
//      }
      // Create a marker for each place.
//      var marker = new google.maps.Marker({
//        map: map,
//        //icon: image,
//        title: place.name,
//        position: place.geometry.location
//      });
//      viewport = place.geometry.viewport;
//      markers.push(marker);
//        marker.position = place.geometry.location;
        
      updateMarkerPosition(place.geometry.location);
      geocodePosition(place.geometry.location);
      initialize2(place.geometry.location,place.name);
      bounds.extend(place.geometry.location);
    }
    
    map.setCenter(bounds.getCenter());
//    marker.setMap(map);
  });

  // Bias the SearchBox results towards places that are within the bounds of the
  // current map's viewport.
  google.maps.event.addListener(map, 'bounds_changed', function() {
    var bounds = map.getBounds();
    searchBox.setBounds(bounds);
  });
}
function initialize2(latLng, _title) {
    var map = new google.maps.Map(document.getElementById('mapCanvas'), {
      zoom: 17,
      center: latLng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    var marker = new google.maps.Marker({
      position: latLng,
      title: _title,
      map: map,
      draggable: true
    });

    // Update current position info.
    updateMarkerPosition(latLng);
    geocodePosition(latLng);

    // Add dragging event listeners.
    google.maps.event.addListener(marker, 'dragstart', function() {
      //updateMarkerAddress('Dragging...');
    });

    google.maps.event.addListener(marker, 'drag', function() {
      updateMarkerStatus('Dragging...');
      updateMarkerPosition(marker.getPosition());
    });

    google.maps.event.addListener(marker, 'dragend', function() {
      updateMarkerStatus('Drag ended');
    });
}
// Onload handler to fire off the app.
google.maps.event.addDomListener(window, 'load', initialize);
jQuery( document ).ready(function() {
	jQuery("#jform_cvr_number").blur(function(e) {
		var cvr = jQuery("#jform_cvr_number").val();
		jQuery.getJSON("http://cvrapi.dk/api?search="+cvr+"&country=dk", function(data){
			var name = data.owners[0].name;
			var lastName = name.split(" ").pop();
			jQuery("#jform_second_name").val(lastName);
			var lastIndex = name.lastIndexOf(" ");
			var firstName = name.substring(0, lastIndex);
			jQuery("#jform_first_name").val(firstName);
			jQuery("#jform_telephone_number").val(data.phone);
			jQuery("#jform_company_name").val(data.name);
			jQuery("#jform_email").val(data.email);
			jQuery("#jform_businessaddress").val(data.address+""+data.city);
			
		});
    });
});
</script>

  <style>
  #mapCanvas {
    width: 330px;
    height: 300px;
    float: left;
  }
   #infoPanel {
    float: left;
    margin-left: 10px;
  }
  #infoPanel div {
    margin-bottom: 5px;
  }

  </style>



<div class="registration<?php echo $this->pageclass_sfx?>">

	<form id="member-registration" action="<?php echo JRoute::_('index.php?option=com_users&task=registration.register'); ?>" method="post" class="form-validate form-horizontal" enctype="multipart/form-data">
            <div id="register1" class="col-md-5 col-xs-offset-1 frm-register-box control-group">
			<!-- group 1-->
                        <h2 class="title"><?php echo JText::_('COM_USERS_REGISTER_TITLE_REGISTER1');?></h2>
                        
                        <div class="form-group">
                            <input id="jform_cvr_number" class="required form-control" type="text" aria-required="true" required="required" size="30" value="" name="jform[cvr_number]" placeholder="CVR-nr.">
                        </div>
                        <div class="form-group">
                            <input id="jform_first_name" class="required form-control" type="text" aria-required="true" required="required" size="30" value="" name="jform[first_name]" placeholder="Fornavn">
                        </div>
                        <div class="form-group">
                            <input id="jform_second_name" class="required form-control" type="text" aria-required="true" required="required" size="30" value="" name="jform[second_name]" placeholder="Efternavn">
                        </div>
                        <div class="form-group">
                            <input id="jform_telephone_number" class="required form-control" type="text" aria-required="true" required="required" size="30" value="" name="jform[telephone_number]" placeholder="Telefon nr.">
                        </div>
                        <div class="form-group">
                            <input id="jform_company_name" class="required form-control" type="text" aria-required="true" required="required" size="30" value="" name="jform[company_name]" placeholder="Firmanavn">
                        </div>
                                        
                        <!-- group 2--> 
                        <p class="text-center"><?php echo JText::_('COM_USERS_REGISTER_TITLE_REGISTER2')?></p>
                        
                        <div class="form-group">
                            <input id="jform_email" class="validate-email required form-control" type="text" aria-required="true" required="required" size="30" value="" name="jform[email]" placeholder="E-mail">
                        </div>
                        <div class="form-group">
                            <input id="jform_password1" class="validate-password required form-control" type="password" aria-required="true" required="required" size="30" value="" name="jform[password1]" placeholder="Kodeord">
                        </div>
                        <div class="form-group">
                            <input id="jform_password2" class="validate-password required form-control" type="password" aria-required="true" required="required" size="30" value="" name="jform[password2]" placeholder="Gentag Kodeord">
                        </div>
		<?php echo JHtml::_('form.token');?>
            </div>
           
            <div id="register3" style="display: block;" class="col-md-5 frm-register-box control-group">
		<h2 class="title"><?php echo JText::_('COM_USERS_REGISTER_TITLE_REGISTER3')?></h2>
                <input id="jform_businessaddress" class="required form-control" type="text" aria-required="true" required="required" size="30" value="" name="jform[businessaddress]" placeholder="Firma adresse" autocomplete="off">	
                <p class="text-center"><?php echo JText::_('COM_USERS_REGISTER_TITLE_REGISTER4')?></p>
                <div class="control-group">
                    <div class="">
                        <div id="mapCanvas"></div>
                        <div id="infoPanel" style="display:none;">
                          <b>Marker status:</b>
                          <div id="markerStatus"><i>Click and drag the marker.</i></div>
                          <input type="hidden" id="jform_latitude" name="jform[latitude]"/>
                          <input type="hidden" id="jform_longitude" name="jform[longitude]"/>
                          <div id="info"></div>
                          <b>Closest matching address:</b>
                          <div id="address"></div>
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="">
                        <button type="submit" onclick="" class="btn validate btnPayment"><?php echo JText::_('JREGISTER');?></button>
<!--                        <a class="btn" href="<?php echo JRoute::_('');?>" title="<?php echo JText::_('JCANCEL');?>"><?php echo JText::_('JCANCEL');?></a>-->
                        <input type="hidden" name="option" value="com_users" />
                        <input type="hidden" name="task" value="registration.register" />
                    </div>
                </div>
            </div>
	</form>
</div>
