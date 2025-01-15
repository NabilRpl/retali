import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/location.dart';

class DummyData {
  static const List<Category> categories = [
    // Masjid
    Category(
      id: 'mosque',
      name: 'Masjid',
      icon: Icons.mosque,
      locations: [
        Location(
          id: 'masjid_haram',
          name: 'Masjidil Haram',
          address: 'King Abdulaziz Gate Rd, Makkah 24231, Arab Saudi',
          imageUrl: '',
          lat: 21.422487,
          lng: 39.826206,
          category: 'mosque',
        ),
        Location(
          id: 'masjid_nabawi',
          name: 'Masjid Nabawi',
          address: '8W4V+CV Al Haram, Medina 42311, Arab Saudi',
          imageUrl: '',
          lat: 24.467991,
          lng: 39.611538,
          category: 'mosque',
        ),
      ],
    ),
    // Hotel
    Category(
      id: 'hotel',
      name: 'Hotel',
      icon: Icons.hotel,
      locations: [
        Location(
          id: 'hotel_zamzam',
          name: 'Le Meridien Makkah',
          address:
              'Jabal Omar, Ibrahim Al Khalil Street, Makkah 24231, Arab Saudi',
          imageUrl: '',
          lat: 21.418957,
          lng: 39.826084,
          category: 'hotel',
        ),
        Location(
          id: 'hotel_dar_al_taqwa',
          name: 'Dar Al Taqwa Hotel',
          address: 'King Fahd Rd, Al Haram, Medina 42311, Arab Saudi',
          imageUrl: '',
          lat: 24.468473,
          lng: 39.611912,
          category: 'hotel',
        ),
      ],
    ),
    // Bandara
    Category(
      id: 'airport',
      name: 'Bandara',
      icon: Icons.flight,
      locations: [
        Location(
          id: 'airport_jeddah',
          name: 'Bandara Internasional King Abdulaziz',
          address: 'Jeddah 23631, Arab Saudi',
          imageUrl: '',
          lat: 21.679564,
          lng: 39.156531,
          category: 'airport',
        ),
        Location(
          id: 'airport_madinah',
          name: 'Bandara Internasional Pangeran Mohammad Bin Abdulaziz',
          address: 'Al Madinah 42342, Arab Saudi',
          imageUrl: '',
          lat: 24.553421,
          lng: 39.705112,
          category: 'airport',
        ),
      ],
    ),
    // Restoran
    Category(
      id: 'restaurant',
      name: 'Restoran',
      icon: Icons.restaurant,
      locations: [
        Location(
          id: 'restaurant_albaik',
          name: 'Al Baik - Al Ghazzawi',
          address:
              'Ibrahim Al Khalil Rd, Al Ghazzawi, Makkah 24231, Arab Saudi',
          imageUrl: '',
          lat: 21.427464,
          lng: 39.814912,
          category: 'restaurant',
        ),
        Location(
          id: 'restaurant_tazaj',
          name: 'Al Tazaj',
          address: 'King Faisal Rd, Bab Al Majidi, Medina 42311, Arab Saudi',
          imageUrl: '',
          lat: 24.470869,
          lng: 39.609795,
          category: 'restaurant',
        ),
      ],
    ),
    // Tempat Bersejarah
    Category(
      id: 'historical',
      name: 'Tempat Bersejarah',
      icon: Icons.history,
      locations: [
        Location(
          id: 'jabal_rahmah',
          name: 'Jabal Rahmah',
          address: 'Mount of Mercy, Arafat, Makkah, Arab Saudi',
          imageUrl: '',
          lat: 21.355701,
          lng: 39.984092,
          category: 'historical',
        ),
        Location(
          id: 'grotto_hira',
          name: 'Gua Hira',
          address: 'Jabal An-Nur, Makkah, Arab Saudi',
          imageUrl: '',
          lat: 21.458754,
          lng: 39.858565,
          category: 'historical',
        ),
        Location(
          id: 'grotto_thawr',
          name: 'Gua Thawr',
          address: 'Jabal Thawr, Makkah, Arab Saudi',
          imageUrl: '',
          lat: 21.377542,
          lng: 39.838373,
          category: 'historical',
        ),
      ],
    ),
    // Gunung
    Category(
      id: 'mountain',
      name: 'Gunung',
      icon: Icons.terrain,
      locations: [
        Location(
          id: 'mount_uhud',
          name: 'Gunung Uhud',
          address: 'Uhud, Medina, Arab Saudi',
          imageUrl: '',
          lat: 24.501697,
          lng: 39.620465,
          category: 'mountain',
        ),
      ],
    ),
  ];
}
