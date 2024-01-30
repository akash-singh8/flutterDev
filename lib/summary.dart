import "package:flutter/material.dart";

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      margin: const EdgeInsets.fromLTRB(18, 18, 18, 4),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 242, 242, 242),
        borderRadius: BorderRadius.circular(12), // Add border radius
      ),
      child: const Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Haircut Only",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "\$50.00",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      "1:15 PM - 2:15 PM",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black54,
                          letterSpacing: 0,
                          height: 1.9),
                    )
                  ],
                )
              ]),
          SizedBox(height: 9),
          Divider(
            color: Colors.black12,
            thickness: 1,
          ),
          SizedBox(height: 9),
          Row(
            children: [
              Text("Staff:",
                  style: TextStyle(color: Colors.black54, fontSize: 15)),
              SizedBox(width: 10),
              Icon(Icons.person_2_rounded, color: Colors.black12),
              SizedBox(width: 4),
              Text("Akash Singh",
                  style: TextStyle(color: Colors.black, fontSize: 15))
            ],
          )
        ],
      ),
    );
  }
}

class AddServiceButton extends StatelessWidget {
  const AddServiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: Color(0xFF218CAC),
        ),
        onPressed: () {
          // Your button tap action here
        },
        child: const Row(
          children: [
            Icon(Icons.add),
            SizedBox(width: 4),
            Text('Add another service'),
          ],
        ),
      ),
    );
  }
}
