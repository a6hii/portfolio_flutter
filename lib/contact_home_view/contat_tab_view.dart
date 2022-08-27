import 'package:abhi_flutter_portfolio/utils/config.dart';
import 'package:abhi_flutter_portfolio/utils/open_functions.dart';
import 'package:flutter/material.dart';

class ContactTabView extends StatelessWidget {
  const ContactTabView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: const EdgeInsets.all(cTabDefaultPadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'What\'s next?',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Get in touch',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 20,
              right: 20,
            ),
            width: 700,
            child: Text(
              'Always looking for exciting project/s to work on and be a part of a team to learn from and contribute to. Whether you have a question or just want to say hi, My inbox is open. I\'ll try my best to get back to you asap!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                  ),
            ),
          ),
          MaterialButton(
            hoverColor: Colors.deepOrange,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Colors.greenAccent,
                width: 2,
              ),
            ),
            onPressed: () {
              appsSendEmail(context: context);
              // launchUrlString(emailURI.toString());
            },
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  'Send me an email',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
