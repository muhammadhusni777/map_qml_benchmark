import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0
//import "E:\python\pyqt\benchmark\qml\controls"

import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4
import QtQuick.Extras.Private 1.0

import QtGraphicalEffects 1.15

import QtQuick.Dialogs 1.3

import QtQuick 2.0
import QtQuick.Window 2.14
import QtLocation 5.6
import QtPositioning 5.6


Window {
	id : root
    width: 400
    height: 400
	color : "#68F3F8"
	//maximumHeight: 800
    //maximumWidth: 1380

    //minimumHeight: 400
    //minimumWidth: 400
    visible: true
    
	//flags: Qt.Dialog
	
	

	
	Text {
	x:30
	//y:0
	
	text:"BLIND ASSISTANCE INTERFACE"
	color: "blue"
	font.pixelSize: 35
	font.bold : true
	}





        Plugin {
        id:mapPlugin
            name: "osm"
			//name:"esri"
			/*
			PluginParameter {
                                 name: "osm.mapping.providersrepository.enabled"
                                 value: "true"
                             }
                             PluginParameter {
                                 name: "osm.mapping.providersrepository.address"
                                 value: "http://maps-redirect.qt.io/osm/5.6/"
                             }
         
        */
		
		
		
		
		
		}

 

Text {
	x:mapGroup.x
	y:mapGroup.y - 30
	text :"MAP"
	color: "blue"
	font.pixelSize: 20

}

Rectangle {
            id: mapGroup
            x: root.width - mapGroup.width
            y: (root.height - mapGroup.height) - 200
            width: 100 + (root.width/4)
            height: 100 +  (root.height/4)
            property int count : 0
            property real lati : -6.000507
            property real longi : 106.687493




            Map{
                id: map
                x: -387
                y: -28
                width: mapGroup.width
                height: mapGroup.height
                color: "#f9f9f9"
                anchors.rightMargin: 8
                anchors.centerIn: parent;
                anchors.fill: parent
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 0
                anchors.bottomMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
				zoomLevel : 18
                maximumZoomLevel: 1000.4
                copyrightsVisible: true
                antialiasing: true
                maximumTilt: 89.3
                plugin: mapPlugin
                //activeMapType: supportedMapTypes[1]

                //  center: QtPositioning.coordinate(latitude_position_value.text, longitude_position_value.text)
                //center: QtPositioning.coordinate(-6.864, 107.58)
				center: QtPositioning.coordinate(parseFloat(latitude_position_value.text), parseFloat(longitude_position_value.text))
                gesture.enabled: true
                gesture.acceptedGestures: MapGestureArea.PinchGesture | MapGestureArea.PanGesture



                visible: true
				
				/*
                Line{
                    id: li
                }
                Line1{
                    id: li1
                }

                Line2{
                    id: li2
                }

				
                Line3{
                    id:rpl_ondong_tahuna

                }

                Line4{
                    id:rpl_ondong_manado
                }

                Line5{
                    id:sanana_taliabu
                }
				
				/*
                Line6 {
                    id:line_G
                    visible: jangkar.checked
                }
				*/
				
                Line7{
                    id:circleondong_tahuna
                }


                Line8{
                    id:actaliabu_sanana
                }



                Timer {

                    function updateloc() {
                        //var crd = map.toCoordinate(Qt.point(mouseX, mouseY))

                        //markerModel.append({ "latitude": lat.text, "longitude": lon.text})
					/*	
                        if (li1.pathLength() < 50){
                            var text = md1.count + 1;

                            md1.append({"coords": QtPositioning.coordinate(latitude_position_value.text, longitude_position_value.text),
                                           "title": text})



                            
                            li1.addCoordinate(QtPositioning.coordinate(latitude_position_value.text, longitude_position_value.text))
                        }

                        if (li1.pathLength() >= 50){

                            for (var index = li1.pathLength(); index >= 0; index--)
                            {
                            
                                li1.removeCoordinate([index]);

                            }
                        }
                    */
					}
                    interval: 2000; running: true; repeat: true
                    onTriggered: {
                        updateloc()
                    }
                }





                Timer {


                    function updateloc2() {
                        //var crd = map.toCoordinate(Qt.point(mouseX, mouseY))

                        //markerModel.append({ "latitude": lat.text, "longitude": lon.text})
						/*
                        if (line_G.pathLength() < 500){
                            var text = md2.count + 1;

                            md2.append({"coords": QtPositioning.coordinate(latitude_graphnel.text, longitude_graphnel.text),
                                           "title": text})



                            line_G.addCoordinate(QtPositioning.coordinate(latitude_graphnel.text, longitude_graphnel.text))
                        }

                        if (line_G.pathLength() >= 500){

                            for (var index = line_G.pathLength(); index >= 0; index--)
                            {
                                //console.log(line_G.pathLength())
                                line_G.removeCoordinate([index]);

                                //li.removeCoordinate(li.coordinateAt[index]);
                                //console.log("Removing ", li.pathLength[index])
                                //console.log(li.pathLength())
                            }
                        }
						*/
                    }
					
                    interval: 2000; running: true; repeat: true
                    onTriggered: {
                        updateloc2()
                    }
                }








                //menampilkan koordinat sesuai mouse
                MouseArea {
                    hoverEnabled: true
                    property var coordinate: map.toCoordinate(Qt.point(mouseX, mouseY))
                    x: 0
                    y: 0
                    width: 780
                    height: 331
                    anchors.rightMargin: -30
                    anchors.leftMargin: 19
                    anchors.fill: parent

                    Label
                    {
                        x: parent.mouseX - width
                        y: parent.mouseY - height - 5
                        text: "lat: %5; lon:%6".arg(parent.coordinate.latitude).arg(parent.coordinate.longitude)
                        color:"white"

                    }


                    //property var panjanglintasan: li.pathLength()
                    //property var path: li.path
					
                    onPressAndHold: {
                        var crd = map.toCoordinate(Qt.point(mouseX, mouseY))

                        if (md.count < 1){
                            mqttvalue.get_lat(crd.latitude)
                            mqttvalue.get_lon(crd.longitude)
                        }
                        else if (md.count > 0){
                            mqttvalue.get_lat1(crd.latitude)
                            mqttvalue.get_lon1(crd.longitude)
                        }

                        markerModel.append({ "latitude": crd.latitude, "longitude": crd.longitude})
                        var text = md.count + 1;
                        md.append({"coords": coordinate, "title": text})
                        li.addCoordinate(coordinate)

                        if (Math.abs(map.pressX - mouse.x ) < map.jitterThreshold
                                && Math.abs(map.pressY - mouse.y ) < map.jitterThreshold) {
                            var p = map.fromCoordinate(crd)
                            lastX = p.x
                            lastY = p.y
                            //map.showMarkerMenu(marker.coordinate)
                        }
                    }

					/*
                    onDoubleClicked: {
                        var coor = map.toCoordinate(Qt.point(mouseX, mouseY))
                        var text1 = md1.count + 1;
                        md1.append({"coords": coordinate, "title": text1})
                        li1.addCoordinate(coordinate)
                    }
					
					*/

                }




                //objek

                MapQuickItem{
                    id : marker
                    sourceItem : Image{
                        id: imagenavigasi
                        width: 20
                        height: 17
                        //transformOrigin: Item.Center
                        source:"navigasi.png"
						//source:"segitiga.png"
                        //rotation: 0
                        fillMode: Image.PreserveAspectFit
                        transform: [
                            Rotation {
                                id: markerdirect
                                origin.x: 15
                                origin.y: 14
                                angle: 0
                            }]
                    }
                    coordinate: QtPositioning.coordinate(latitude_position_value.text, longitude_position_value.text)
                    //coordinate: QtPositioning.coordinate(2.73706666666667, 125.36065)
                    anchorPoint.x : 15
                    anchorPoint.y : 14
                    //anchorPoint.x : parent
                    //anchorPoint.y : parent

                }


				/*
                MapQuickItem{
                    id : marker1
                    sourceItem : Image{
                        id: imagenavigasi1
                        width: 40
                        height: 37
                        //transformOrigin: Item.Center
                        source:"G.png"
                        //rotation: 0
                        fillMode: Image.PreserveAspectFit
                        transform: [
                            Rotation {
                                id: gheading
                                origin.x: 15
                                origin.y: 14
                                angle: 0
                            }]
                    }
                    visible: jangkar.checked
                    coordinate: QtPositioning.coordinate(latitude_graphnel.text, longitude_graphnel.text)
                    //coordinate: QtPositioning.coordinate(2.73706666666667, 125.36065)
                    anchorPoint.x : 15
                    anchorPoint.y : 14
                    //anchorPoint.x : parent
                    //anchorPoint.y : parent

                }
				*/

              

    
                Rectangle {
                    id: rectangle
                    x: 840
                    y: 508
                    width: 92
                    height: 47
                    color: "#a18cd1"
                    radius: 10
                    gradient: Gradient {
                        GradientStop {
                            position: 0
                            color: "#84fab0"
                        }

                        GradientStop {
                            position: 1
                            color: "#8fd3f4"
                        }
                    }

                    MouseArea{
                        x: 0
                        y: 0
                        width: 92
                        height: 47
                        onDoubleClicked: {
                            markerModel.clear()
                            mqttvalue.get_lat(0)
                            mqttvalue.get_lon(0)
                            mqttvalue.get_lat1(0)
                            mqttvalue.get_lon1(0)
                            md.clear()
                            //md.count = 0
                            for (var index = li.pathLength(); index >= 0; index--)
                            {
                                //console.log(li.pathLength())
                                li.removeCoordinate([index]);
                                li1.removeCoordinate([index]);
                                //li.removeCoordinate(li.coordinateAt[index]);
                                //console.log("Removing ", li.pathLength[index])
                                //console.log(li.pathLength())
                            }
                        }
                    }

                    Text {
                        id: element
                        x: 0
                        y: 15
                        width: 92
                        height: 14
                        text: qsTr("Clear line")
                        horizontalAlignment: Text.AlignHCenter
                        font.pixelSize: 12
                    }

                    Text {
                        id: dst_bw_line
                        x: 44
                        y: -20
                        width: 40
                        height: 14
                        color: "red"
                        text: qsTr("0")
                        horizontalAlignment: Text.AlignRight
                        font.pixelSize: 12
                    }

                    Text {
                        id: element9
                        x: -116
                        y: -21
                        width: 117
                        height: 14
                        color: "red"
                        text: qsTr("Distance between line (m)")
                        horizontalAlignment: Text.AlignLeft
                        font.pixelSize: 12
                    }

                    Text {
                        id: markerinfo
                        x: -116
                        y: -41
                        width: 117
                        height: 14
                        color: "red"
                        text: qsTr("Marker Info")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignLeft
                    }


                    Text {
                        id: latitude_target
                        x: -743
                        y: -15
                        width: 186
                        height: 28
                        color: "#ffffff"
                        text: qsTr("Latitude Target")
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        font.weight: Font.Bold
                        font.styleName: "Bold"
                        font.bold: true
						visible:false
					}

                    Text {
                        id: longtitude_target
                        x: -729
                        y: 16
                        width: 192
                        height: 28
                        color: "#ffffff"
                        text: qsTr("Longtitude Target")
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        font.weight: Font.Bold
                        font.styleName: "Bold"
                        font.bold: true
						visible:false
                    }
					
                    Text {
                        id: x_error
                        x: -757
                        y: -72
                        width: 94
                        height: 28
                        color: "#ffffff"
                        text: qsTr("0")
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        font.weight: Font.Bold
                        font.styleName: "Bold"
                        font.bold: true
						visible:false
                    }

                    Text {
                        id: y_error
                        x: -757
                        y: -42
                        width: 94
                        height: 28
                        color: "#ffffff"
                        text: qsTr("0")
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        font.weight: Font.Bold
                        font.styleName: "Bold"
                        font.bold: true
						visible:false
                    }

                    Text {
                        id: text5
                        x: -837
                        y: -15
                        color: "#f4f4f4"
                        text: qsTr("Lat Target:")
                        font.pixelSize: 18
						visible:false
					}

                    Text {
                        id: text6
                        x: -837
                        y: 15
                        color: "#f4f4f4"
                        text: qsTr("Long Target:")
                        font.pixelSize: 18
						visible:false
					}

                    Text {
                        id: text7
                        x: -838
                        y: -72
                        color: "#f4f4f4"
                        text: qsTr("X Error  :")
                        font.pixelSize: 18
						visible:false
                    }

                    Text {
                        id: text8
                        x: -838
                        y: -42
                        color: "#f4f4f4"
                        text: qsTr("Y Error  :")
                        font.pixelSize: 18
						visible:false
					}
					
					
					

                }







				/*
                MapQuickItem{
                    id : bouy

                    sourceItem : Image{
                        id: bouyondong
                        width: 40
                        height: 37
                        //transformOrigin: Item.Center
                        source:"bouy.png"
                        //rotation: 0
                        fillMode: Image.PreserveAspectFit

                    }



                    coordinate: QtPositioning.coordinate(3.572855377, 125.350032879)
                    //coordinate: QtPositioning.coordinate(2.73706666666667, 125.36065)
                    anchorPoint.x : 15
                    anchorPoint.y : 14

                }
				*/














                MapItemView {
                    id: mivMarker
                    model: ListModel {
                        id: markerModel
                    }
                    delegate: Component {
                        MapQuickItem {
                            coordinate: QtPositioning.coordinate(latitude, longitude)
                            property real slideIn: 0
                        }
                    } 
                }






            }
			
			/*
            Item {
                id: windywindow
                x: -5
                y: 0
                width: 946
                height: 273
                visible: windy.checked
				
                WebEngineView {
                    anchors.fill: parent
                    anchors.rightMargin: -9
                    url: "https://www.windy.com/?7.101,132.803,4"
                }
				
            }
			*/

            
			
        }

	Text {
		id : latitude_position_value
		x: 500
        y: 500
		text: "0"
		font.pixelSize: 12
	}
	
	Text {
		id : longitude_position_value
		x: 500
        y: 550
		text: "0"
		font.pixelSize: 12
	}


//button home
	
	
	
	
	
	Button {
		id : mejus
		x :0
		y :0
		
		width: 50
		height: 50
		visible:false
		onClicked:{
						
						backend.button_test("L")
								
						}
		
		
					
	}		
	

	Timer{
		id:tmgauge
		interval: 50
		repeat: true
		running: true
		onTriggered: {
			mejus.text = backend.get_adc1()
			latitude_position_value.text = backend.get_lat()
			longitude_position_value.text = backend.get_long()
			
			
		}
	}

	Connections{
		target: backend
		//function onValueGauge(value){
        //   slider.value = value/10
        //   progressIndicator.value = value
        //   customSlider.value = value
        //}
	}
}



	
	
	
	
	
	
   


