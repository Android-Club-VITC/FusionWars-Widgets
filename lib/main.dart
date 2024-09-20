import 'package:flutter/material.dart';

// The main function is the entry point of the Flutter application.
void main() {
  runApp(WidgetShowcaseApp());
}

// WidgetShowcaseApp is a StatelessWidget that sets up the MaterialApp.
class WidgetShowcaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Showcase',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Sets the primary color theme.
      ),
      home: WidgetShowcase(), // Sets the home screen of the app.
    );
  }
}

// WidgetShowcase is a StatelessWidget that contains all the widgets to be showcased.
class WidgetShowcase extends StatelessWidget {
  // TextEditingController to manage the text input in TextField.
  final TextEditingController _controller = TextEditingController();

  // A list of items for ListView demonstration.
  final List<String> items = List<String>.generate(10, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar widget displays at the top of the app.
      appBar: AppBar(
        title: Text('Flutter Widget Showcase'), // Title of the app bar.
        centerTitle: true, // Centers the title.
        backgroundColor: Colors.green, // Background color of the app bar.
        actions: <Widget>[
          // Action buttons on the right side of the app bar.
          IconButton(
            icon: Icon(Icons.notifications), // Notification icon.
            onPressed: () {
              // Handle notification icon press.
            },
          ),
        ],
      ),
      // Drawer widget provides a navigation drawer.
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Drawer header.
            DrawerHeader(
              child: Text('Header'),
              decoration: BoxDecoration(color: Colors.blue), // Background color.
            ),
            // ListTile inside the drawer.
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item tap.
              },
            ),
          ],
        ),
      ),
      // The body of the Scaffold, containing the main content.
      body: SingleChildScrollView(
        // Allows the content to be scrollable.
        child: Column(
          // Arranges the widgets vertically.
          children: <Widget>[
            // Container Widget demonstration.
            Container(
              width: 100.0, // Width of the container.
              height: 100.0, // Height of the container.
              margin: EdgeInsets.all(10.0), // Outer spacing.
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Inner spacing.
              alignment: Alignment.center, // Aligns the child within the container.
              decoration: BoxDecoration(
                color: Colors.blue, // Background color.
                border: Border.all(color: Colors.black, width: 2.0), // Border styling.
                borderRadius: BorderRadius.circular(10.0), // Rounded corners.
                boxShadow: [
                  // Shadow effect.
                  BoxShadow(
                    color: Colors.grey, // Shadow color.
                    blurRadius: 5.0, // Blur radius.
                    offset: Offset(2.0, 2.0), // Shadow position offset.
                  ),
                ],
              ),
              // Child widget inside the container.
              child: Text(
                'Hello Container',
                style: TextStyle(color: Colors.white, fontSize: 16.0), // Text styling.
              ),
            ),
            // Row Widget demonstration.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Space around the children.
              crossAxisAlignment: CrossAxisAlignment.center, // Aligns children vertically.
              mainAxisSize: MainAxisSize.max, // Takes maximum horizontal space.
              children: <Widget>[
                Icon(Icons.star, color: Colors.red), // Red star icon.
                Icon(Icons.star, color: Colors.green), // Green star icon.
                Icon(Icons.star, color: Colors.blue), // Blue star icon.
              ],
            ),
            // Column Widget demonstration.
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly spaces the children vertically.
              crossAxisAlignment: CrossAxisAlignment.stretch, // Stretches children to fill horizontal space.
              mainAxisSize: MainAxisSize.min, // Minimum vertical space.
              children: <Widget>[
                Text('First Line'),
                Text('Second Line'),
                Text('Third Line'),
              ],
            ),
            // Text Widget demonstration.
            Text(
              'Hello Flutter!',
              style: TextStyle(
                color: Colors.blueAccent, // Text color.
                fontSize: 24.0, // Font size.
                fontWeight: FontWeight.bold, // Bold text.
                fontStyle: FontStyle.italic, // Italic text.
                letterSpacing: 2.0, // Space between letters.
                wordSpacing: 4.0, // Space between words.
                decoration: TextDecoration.underline, // Underline decoration.
                decorationColor: Colors.red, // Decoration color.
                decorationStyle: TextDecorationStyle.dashed, // Dashed underline.
              ),
              textAlign: TextAlign.center, // Centers the text.
              maxLines: 2, // Maximum number of lines.
              overflow: TextOverflow.ellipsis, // Handles overflow with ellipsis.
            ),
            // Image Widget demonstration.
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-bg-opaque-2x-7f6fdb00e2d8df0455e0b758209d7b8ef79a6dca1608ef890b4d18c7f8d3e0d3.png',
              width: 200.0, // Width of the image.
              height: 200.0, // Height of the image.
              fit: BoxFit.cover, // How the image should be fitted within its bounds.
              alignment: Alignment.center, // Alignment within the container.
              color: Colors.blue.withOpacity(0.5), // Overlay color with opacity.
              colorBlendMode: BlendMode.colorBurn, // Blend mode for the overlay color.
              repeat: ImageRepeat.noRepeat, // Image repeat behavior.
            ),
            // Icon Widget demonstration.
            Icon(
              Icons.favorite, // Icon data.
              color: Colors.pink, // Icon color.
              size: 48.0, // Icon size.
              semanticLabel: 'Favorite Icon', // Semantic label for accessibility.
              textDirection: TextDirection.ltr, // Text direction.
            ),
            // ElevatedButton Widget demonstration.
            ElevatedButton(
              onPressed: () {
                // Handle button press.
              },
              style: ElevatedButton.styleFrom(
               
                shadowColor: Colors.black, // Shadow color.
                elevation: 5.0, // Elevation of the button.
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0), // Rounded corners.
                ),
                padding: EdgeInsets.all(20.0), // Padding inside the button.
              ),
              child: Text('Click Me'), // Text inside the button.
            ),
            // TextField Widget demonstration.
            Padding(
              padding: EdgeInsets.all(8.0), // Padding around the TextField.
              child: TextField(
                controller: _controller, // Manages the text input.
                decoration: InputDecoration(
                  labelText: 'Enter Text', // Label above the input.
                  hintText: 'Type something', // Placeholder text.
                  prefixIcon: Icon(Icons.person), // Icon inside the input on the left.
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear), // Clear icon.
                    onPressed: () {
                      _controller.clear(); // Clears the input.
                    },
                  ),
                  border: OutlineInputBorder(), // Border style.
                  filled: true, // Indicates if the input is filled.
                  fillColor: Colors.grey[200], // Background color of the input.
                ),
                keyboardType: TextInputType.text, // Type of keyboard to show.
                textInputAction: TextInputAction.done, // Action button on the keyboard.
                autofocus: true, // Automatically focuses the input.
                obscureText: false, // Hides the input text if true.
                maxLength: 50, // Maximum number of characters.
                onChanged: (text) {
                  // Handle text change.
                },
              ),
            ),
            // ListView Widget demonstration inside a SizedBox to constrain height.
            SizedBox(
              height: 200, // Height of the ListView.
              child: ListView.builder(
                itemCount: items.length, // Number of items.
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.list), // Icon at the start.
                    title: Text('Item ${items[index]}'), // Item title.
                    trailing: Icon(Icons.arrow_forward), // Icon at the end.
                    onTap: () {
                      // Handle item tap.
                    },
                  );
                },
                padding: EdgeInsets.all(10.0), // Padding around the ListView.
                scrollDirection: Axis.vertical, // Scroll direction.
                physics: BouncingScrollPhysics(), // Scroll physics.
                shrinkWrap: true, // Sizes the ListView to its contents.
              ),
            ),
            // GridView Widget demonstration inside a SizedBox.
            SizedBox(
              height: 400, // Height of the GridView.
              child: GridView.count(
                crossAxisCount: 2, // Number of columns.
                crossAxisSpacing: 10.0, // Space between columns.
                mainAxisSpacing: 10.0, // Space between rows.
                padding: EdgeInsets.all(10.0), // Padding around the GridView.
                shrinkWrap: true, // Sizes the GridView to its contents.
                physics: NeverScrollableScrollPhysics(), // Disables scrolling.
                children: List.generate(6, (index) {
                  return Container(
                    color: Colors.teal[100 * ((index % 9) + 1)], // Background color.
                    child: Center(
                      child: Text('Tile $index'), // Text in the grid tile.
                    ),
                  );
                }),
              ),
            ),
            // Padding Widget demonstration.
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Padding values.
              child: Text('This text is padded'), // Text inside the padding.
            ),
            // Center Widget demonstration.
            Center(
              child: Text('I am centered'), // Centered text.
            ),
            // Stack Widget demonstration.
            Stack(
              alignment: Alignment.center, // Aligns children within the stack.
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red, // Bottom container.
                ),
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.green, // Middle container.
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue, // Positioned container.
                  ),
                ),
              ],
            ),
            // Expanded Widget demonstration inside a Row.
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2, // Takes twice the space compared to the next Expanded.
                  child: Container(
                    color: Colors.red,
                    height: 100,
                  ),
                ),
                Expanded(
                  flex: 1, // Takes default space.
                  child: Container(
                    color: Colors.green,
                    height: 100,
                  ),
                ),
              ],
            ),
            // Flexible Widget demonstration inside a Row.
            Row(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  fit: FlexFit.tight, // Forces the child to fill available space.
                  child: Container(
                    color: Colors.blue,
                    height: 100,
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.loose, // Child can be smaller than the allocated space.
                  child: Container(
                    color: Colors.orange,
                    height: 100,
                  ),
                ),
              ],
            ),
            // Align Widget demonstration.
            Container(
              height: 100,
              color: Colors.grey[300],
              child: Align(
                alignment: Alignment.bottomRight, // Positions child at bottom right.
                child: Text('Bottom Right'), // Text to align.
              ),
            ),
            // GestureDetector Widget demonstration.
            GestureDetector(
              onTap: () {
                // Handle tap.
              },
              onDoubleTap: () {
                // Handle double tap.
              },
              onLongPress: () {
                // Handle long press.
              },
              child: Container(
                color: Colors.yellow, // Background color.
                width: 100,
                height: 100,
                child: Center(
                  child: Text('Tap me'), // Text inside the container.
                ),
              ),
            ),
            // SizedBox Widget demonstration.
            SizedBox(
              width: 100.0, // Width of the SizedBox.
              height: 100.0, // Height of the SizedBox.
              child: ElevatedButton(
                onPressed: () {}, // Handle button press.
                child: Text('Fixed Size Button'), // Text inside the button.
              ),
            ),
            // Card Widget demonstration.
            Card(
              elevation: 5.0, // Shadow depth.
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Rounded corners.
              ),
              margin: EdgeInsets.all(10.0), // Outer margin.
              child: ListTile(
                leading: Icon(Icons.album), // Icon at the start.
                title: Text('Card Title'), // Title text.
                subtitle: Text('Card Subtitle'), // Subtitle text.
                trailing: Icon(Icons.more_vert), // Icon at the end.
                onTap: () {
                  // Handle tap.
                },
              ),
            ),
          ],
        ),
      ),
      // FloatingActionButton displayed at the bottom right.
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle FAB press.
        },
        child: Icon(Icons.add), // Icon inside the FAB.
        backgroundColor: Colors.red, // Background color.
      ),
      // BottomNavigationBar displayed at the bottom.
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // Items in the navigation bar.
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home', // Label under the icon.
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
        ],
        currentIndex: 0, // Index of the currently selected item.
        selectedItemColor: Colors.amber[800], // Color of the selected item.
        onTap: (index) {
          // Handle item tap.
        },
      ),
    );
  }
}