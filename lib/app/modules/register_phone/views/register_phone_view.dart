library register_phone;

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../constans/app_constants.dart';
import '../../../theme/app_colors.dart';
import '../controllers/register_phone_controller.dart';

// widgets
part 'widgets/Create_button.dart';
part 'widgets/username_text_field.dart';
part 'widgets/phone_number_text_field.dart';
part 'widgets/password_text_field.dart';

class RegisterPhoneView extends GetView<RegisterPhoneController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: BackButton(),
        flexibleSpace: FlexibleSpaceBar(
          centerTitle:false,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text(
                'Create Personal Account',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )
              ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.square(100.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child:TabBar(
              isScrollable: true,
              indicatorColor: colorSuccess,
              controller: controller.tabController,
              tabs: controller.myTabs,
            ),
          ),
        ),
      ),
      
      body: SafeArea(
        child: TabBarView(
          controller: controller.tabController,
          children: [
            _buildScreenEmail(),
            _buildScreenPhone(),
          ]
        ),
      ),
    );
  }

   Widget _buildScreenEmail() {
    return Center(
      child: Text(
        'Email Screen',
        style: TextStyle(fontSize: 20),
      ),
    );
   }

   Widget _buildScreenPhone() {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: spacing),
          child: Column(
            crossAxisAlignment : CrossAxisAlignment.start,
            children:[
              SizedBox(height: spacing),
              UsernameTextField(),
              SizedBox(height: spacing),
              PhoneNumberTextField(),
              SizedBox(height: spacing),
              PasswordTextField(),
              SizedBox(height: spacing),
              _buildTextButtonReveral(),
              SizedBox(height: spacing*2),
              _buildTextButtonTerm(),
              CreateButton(),
              _buildTextButtonHaveAkun(),


            ]
          ),
        ),
      );
  }

  Widget _buildTextButtonReveral() {
    return Wrap(
      children:[
        const Text(
          'Referral ID (Optional) ',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        Icon(Icons.arrow_drop_down)
      ]
    );
  }

  Widget _buildTextButtonTerm() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                crossAxisAlignment : WrapCrossAlignment.center,
                children: [
                  
                  Text(
                    'I have read and agree to Digicoins',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Terms of Service',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 9,
                        color: colorSuccess,
                      ),
                    ),
                  ),
                  Text(
                    'and',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 9,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Privacy Policy',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 9,
                        color: colorSuccess,
                      ),
                    ),
                  ),
                  
                ],
              )
            ],
          )
        )
      ],
    );
  }

  Widget _buildTextButtonHaveAkun() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                crossAxisAlignment : WrapCrossAlignment.center,
                children: [
                  Text(
                    'Already have an Account? ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 9,
                      
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 9,
                        color: colorSuccess,
                      ),
                    ),
                  ),
                  
                ],
              )
            ],
          )
        )
      ],
    );
  }

}
