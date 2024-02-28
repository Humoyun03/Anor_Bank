import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateSecretPinPage extends StatelessWidget {
  const CreateSecretPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Ink(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: const Color(0xFFF5F7F6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new)
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/img.png'),
                        const SizedBox(height: 24),
                        Text(
                          'Mahfiy so\'zni yarating',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54.withOpacity(0.7)
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            'Lotin alifbosida harf va sonlardan iborat kamida 6 belgi',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54.withOpacity(0.5)
                            ),
                          ),
                        ),
                        const SizedBox(height: 36),
                        Ink(
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                            color: Colors.white
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 64,
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color(0xFFF5F7F6),
                                      hintText: 'Mahfiy so\'zni kiriting',
                                      hintStyle: const TextStyle(
                                        color: Colors.black26,
                                        fontSize: 17
                                      ),
                                      isDense: true,
                                      suffix: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.remove_red_eye),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide.none
                                      ),
                                    ),
                                    maxLines: 1,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(12),
                                  child: Ink(
                                    height: 56,
                                    width: double.infinity,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                      color: const Color(0xFFF5F7F6)
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Davom etish',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54.withOpacity(0.7)
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.question_mark_outlined,
                              color: Color(0xFF671636)
                            ),
                            Text(
                              'BATAFSIL',
                              style: TextStyle(
                                color: Color(0xFF671636),
                                fontSize: 16,
                                fontWeight: FontWeight.w700
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
