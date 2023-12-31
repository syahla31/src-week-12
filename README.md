# Laporan Praktikum Pemrograman Asynchronous

> Nama    : Syahla' Syafiqah Fayra
>
> NIM     : 2141720015
>
> Kelas   : TI - 3G
>
> Link Github : 

## Praktikum 1: Mengunduh Data dari Web Service (API)

### Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama books di folder src week-12 repository GitHub Anda.

Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.

<img width="300" alt="image" src="gambar/image.png">

### Langkah 2: Cek file pubspec.yaml
Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.

<img width="300" alt="image" src="gambar/image-1.png">

### Langkah 3: Buka file main.dart
> **Soal 1**
>
> * Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
>
>   <img width="300" alt="image" src="gambar/image-2.png">

### Langkah 4: Tambah method getData()
Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.

<img width="300" alt="image" src="gambar/image-3.png">

> **Soal 2**
>
> * Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda seperti gambar berikut ini.
> 
>   <img width="300" alt="image" src="gambar/image-4.png">
>
> * Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil. Lakukan capture milik Anda dan tulis di README pada laporan praktikum. Lalu lakukan commit dengan pesan "W12: Soal 2".
>
>   <img width="300" alt="image" src="gambar/image-5.png">

### Langkah 5: Tambah kode di ElevatedButton
Tambahkan kode pada onPressed di ElevatedButton seperti berikut.

<img width="300" alt="image" src="gambar/image-6.png">

> **Soal 3**
>
> * Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
> 
>   Pada langkah kelima, dilakukan penggunaan metode substring(0, 450) untuk mengekstraksi 450 karakter pertama dari respons HTTP untuk membatasi panjang teks yang akan ditampilkan dalam aplikasi. Penggunaan catchErrordigunakan untuk mengatasi kemungkinan terjadinya kesalahan selama proses permintaan data. Jika terdapat kesalahan saat pengambilan data, maka  pesan 'An error has occurred' akan dimasukkan ke variabel result dan ditampilkan.
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".
>
>   <img width="200" alt="gif" src="gambar/praktikum 1.gif">


## Praktikum 2: Menggunakan await/async untuk menghindari callbacks

### Langkah 1: Buka file main.dart
Tambahkan tiga method berisi kode seperti berikut di dalam class _FuturePageState.

<img width="300" alt="image" src="gambar/image-7.png">

### Langkah 2: Tambah method count()
Lalu tambahkan lagi method ini di bawah ketiga method sebelumnya.

<img width="300" alt="image" src="gambar/image-8.png">

### Langkah 3: Panggil count()
Lakukan comment kode sebelumnya, ubah isi kode onPressed() menjadi seperti berikut.

<img width="300" alt="image" src="gambar/image-9.png">

### Langkah 4: Run
Akhirnya, run atau tekan F5 jika aplikasi belum running. Maka Anda akan melihat seperti gambar berikut, hasil angka 6 akan tampil setelah delay 9 detik.

<img width="300" alt="image" src="gambar/image-10.png">

> **Soal 4**
>
> * Jelaskan maksud kode langkah 1 dan 2 tersebut!
>
>      Langkah 1: Di dalam file main.dart, kita menambahkan tiga metode baru di dalam class _FuturePageState. Metode-metode tersebut adalah returnOneAsync, returnTwoAsync, dan returnThreeAsync. Metode-metode ini mensimulasikan operasi asynchronous dengan menunggu selama 3 detik. Setelah 3 detik, metode-metode ini akan mengembalikan nilai integer.
>
>      Langkah 2: Metode count() menunggu ketiga operasi tersebut selesai. Ketika ketiga operasi tersebut selesai, metode count() akan melakukan sesuatu, seperti mengubah tampilan widget.
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 4".
> 
>   <img width="200" alt="gif" src="gambar/praktikum 2.gif">


## Praktikum 3: Menggunakan Completer di Future

### Langkah 1: Buka main.dart
Pastikan telah impor package async berikut.

<img width="300" alt="image" src="gambar/image-11.png">

### Langkah 2: Tambahkan variabel dan method
Tambahkan variabel late dan method di class _FuturePageState seperti ini.

<img width="300" alt="image" src="gambar/image-12.png">

### Langkah 3: Ganti isi kode onPressed()
Tambahkan kode berikut pada fungsi onPressed(). Kode sebelumnya bisa Anda comment.

<img width="300" alt="image" src="gambar/image-13.png">

### Langkah 4: Run
Terakhir, run atau tekan F5 untuk melihat hasilnya jika memang belum running. Bisa juga lakukan hot restart jika aplikasi sudah running. Maka hasilnya akan seperti gambar berikut ini. Setelah 5 detik, maka angka 42 akan tampil.

<img width="300" alt="image" src="gambar/image-14.png">

> **Soal 5**
>
> * Jelaskan maksud kode langkah 2 tersebut!
>
>   Langkah 2 mendefinisikan variabel completer dan dua metode, yaitu getNumber() dan calculate(), dalam class _FuturePageState. completer digunakan sebagai objek Completer, yang memungkinkan pembuatan nilai Future secara manual. Metode getNumber() menginisialisasi completer, memanggil metode calculate() yang mensimulasikan operasi yang memakan waktu, dan mengembalikan completer.future. Dengan ini, saat operasi selesai, completer.complete(42) dipanggil, dan nilai 42 dapat diakses melalui completer.future. Langkah-langkah tersebut menciptakan mekanisme untuk menghasilkan nilai asinkron setelah suatu operasi selesai, dan Completer digunakan untuk mengelola alur eksekusi dan nilai Future.
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 5".
>
>   <img width="200" alt="gif" src="gambar/praktikum 3-1.gif">

### Langkah 5: Ganti method calculate()
Gantilah isi code method calculate() seperti kode berikut, atau Anda dapat membuat calculate2()

<img width="300" alt="image" src="gambar/image-15.png">

### Langkah 6: Pindah ke onPressed()
Ganti menjadi kode seperti berikut.

<img width="300" alt="image" src="gambar/image-16.png">

> **Soal 6**
>
> * Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!
>
>   Langkah 2, 5, dan 6 berkaitan dengan penanganan operasi asinkron menggunakan Completer dan Future dalam konteks Flutter. Pada Langkah 2 memperkenalkan variabel completer dan dua metode, getNumber() dan calculate(), yang bekerja bersama untuk menghasilkan nilai asinkron. Pada Langkah 5 menggantikan isi metode calculate() dengan penanganan error yang lebih rinci, memungkinkan program untuk menangani dan mengatasi kesalahan yang mungkin terjadi selama eksekusi operasi. dan Pada Langkah 6 memperbarui bagian onPressed() untuk memanfaatkan hasil dari operasi asinkron, menggunakan .then() untuk menangkap nilai ketika operasi selesai dan .catchError() untuk menangani kesalahan
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 6".
> 
>   <img width="200" alt="gif" src="gambar/praktikum 3-2.gif">

## Praktikum 4: Memanggil Future secara paralel

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

<img width="300" alt="image" src="gambar/image-17.png">

### Langkah 2: Edit onPressed()
Anda bisa hapus atau comment kode sebelumnya, kemudian panggil method dari langkah 1 tersebut.

<img width="300" alt="image" src="gambar/image-18.png">

### Langkah 3: Run
Anda akan melihat hasilnya dalam 3 detik berupa angka 6 lebih cepat dibandingkan praktikum sebelumnya menunggu sampai 9 detik.

> **Soal 7**
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 7".
>
>   <img width="200" alt="gif" src="gambar/praktikum 4.gif">

### Langkah 4: Ganti variabel futureGroup
Anda dapat menggunakan FutureGroup dengan Future.wait seperti kode berikut.

<img width="300" alt="image" src="gambar/image-19.png">

> **Soal 8**
>
> * Jelaskan maksud perbedaan kode langkah 1 dan 4!
>
>   Langkah 1: Di dalam langkah ini, kita membuat grup dari tiga operasi yang memakan waktu lama. Ketika grup tersebut selesai, kita menjumlahkan hasil dari operasi-operasi tersebut dan memperbarui tampilan widget.
>
>   Langkah 4: Di dalam langkah ini, kita menunggu sampai tiga operasi yang memakan waktu lama selesai. Ketika ketiga operasi tersebut selesai, kita mengumpulkan hasil dari operasi-operasi tersebut dan memperbarui tampilan widget.

## Praktikum 5: Menangani Respon Error pada Async Code

### Langkah 1: Buka file main.dart
Tambahkan method ini ke dalam class _FuturePageState

<img width="300" alt="image" src="gambar/image-20.png">

### Langkah 2: ElevatedButton
Ganti dengan kode berikut

<img width="300" alt="image" src="gambar/image-21.png">

### Langkah 3: Run
Lakukan run dan klik tombol GO! maka akan menghasilkan seperti gambar berikut.

<img width="300" alt="image" src="gambar/image-22.png">

Pada bagian debug console akan melihat teks Complete seperti berikut.

<img width="300" alt="image" src="gambar/image-23.png">

> **Soal 9**
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 9".
>
>   <img width="200" alt="gif" src="gambar/praktikum 5-1.gif">

### Langkah 4: Tambah method handleError()
Tambahkan kode ini di dalam class _FutureStatePage

<img width="300" alt="image" src="gambar/image-24.png">

> **Soal 10**
>
> * Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!
>
>   <table>
>    <tr>
>    <th>Panggil method handleError</th>
>    <th>Hasil Run</th>
>    </tr>
>    <tr>
>    <th><img src="gambar/image-25.png"></th>
>    <th><img width="200" src="gambar/praktikum 5-2.gif"></th>
>    </tr>
>   </table>

>
>   Metode returnError() berfungsi untuk menyimulasikan kondisi kesalahan. Metode ini akan menunggu selama 2 detik, lalu memicu kesalahan dengan kode kesalahan 404.
>   Metode handleError() berfungsi untuk menangani kesalahan yang mungkin terjadi. Metode ini akan mencoba mengeksekusi metode returnError(), dan jika metode tersebut menghasilkan kesalahan, maka kesalahan tersebut akan ditangkap dan ditampilkan di tampilan widget.

## Praktikum 6: Menggunakan Future dengan StatefulWidget

### Langkah 1: install plugin geolocator
Tambahkan plugin geolocator dengan mengetik perintah berikut di terminal.

<img width="300" alt="image" src="gambar/image-26.png">

### Langkah 2: Tambah permission GPS
Jika Anda menargetkan untuk platform Android, maka tambahkan baris kode berikut di file android/app/src/main/androidmanifest.xml

<img width="500" alt="image" src="gambar/image-27.png">

### Langkah 3: Buat file geolocation.dart
Tambahkan file baru ini di folder lib project Anda.

<img width="300" alt="image" src="gambar/image-28.png">

### Langkah 4: Buat StatefulWidget
Buat class LocationScreen di dalam file geolocation.dart

<img width="400" alt="image" src="gambar/image-29.png">

### Langkah 5: Isi kode geolocation.dart

<img width="500" alt="image" src="gambar/image-30.png">

> **Soal 11**
>
> * Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
> 
>   <img width="300" alt="image" src="gambar/image-31.png">

### Langkah 6: Edit main.dart
Panggil screen baru tersebut di file main Anda seperti berikut.

<img width="300" alt="image" src="gambar/image-33.png">

### Langkah 7: Run
Run project Anda di device atau emulator (bukan browser), maka akan tampil seperti berikut ini.

<img width="300" alt="image" src="gambar/image-32.png">

### Langkah 8: Tambahkan animasi loading
Tambahkan widget loading seperti kode berikut. Lalu hot restart, perhatikan perubahannya.

<img width="300" alt="image" src="gambar/image-34.png">

> **Soal 12**
>
> * Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));
>
>   <img width="300" alt="image" src="gambar/image-35.png">
>
> * Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?
>
>   Dapat, karena saya menggunakan dependensi geolocator : ^10.1 yang secara otomatis akan menambahkan paket geolocator_web yang mendukung geolokasi di browser
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 12".
>
>   <img width="200" alt="gif" src="gambar/praktikum 6.gif">

## Praktikum 7: Manajemen Future dengan FutureBuilder

### Langkah 1: Modifikasi method getPosition()
Buka file geolocation.dart kemudian ganti isi method dengan kode ini.

<img width="300" alt="image" src="gambar/image-37.png">

### Langkah 2: Tambah variabel
Tambah variabel ini di class _LocationScreenState

<img width="300" alt="image" src="gambar/image-36.png">

### Langkah 3: Tambah initState()
Tambah method ini dan set variabel 

<img width="300" alt="image" src="gambar/image-38.png">

### Langkah 4: Edit method build()
Ketik kode berikut dan sesuaikan. Kode lama bisa Anda comment atau hapus.

<img width="400" alt="image" src="gambar/image-39.png">

> **Soal 13**
>
> * Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?
> 
>   FutureBuilder adalah alat yang berguna untuk menangani operasi asynchronous di Flutter. Ini dapat membantu menyederhanakan dan membersihkan kode, meningkatkan keterbacaan kode, mengurangi boilerplate, dan menyediakan cara yang lebih terstruktur untuk menangani state dan kondisi UI.
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 13".
> 
>   <img width="200" alt="gif" src="gambar/praktikum 7.gif">
>
> * Seperti yang Anda lihat, menggunakan FutureBuilder lebih efisien, clean, dan reactive dengan Future bersama UI.

### Langkah 5: Tambah handling error
Tambahkan kode berikut untuk menangani ketika terjadi error. Kemudian hot restart.

<img width="400" alt="image" src="gambar/image-40.png">

> **Soal 14**
>
> * Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?
>
>   Tidak ada perbedaan dari tampilan UI namun jika terjadi error saat pengambilan data lokasi, maka akan menampilkan peringatan
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 14".
>
>   <img width="200" alt="gif" src="gambar/praktikum 7.gif">

## Praktikum 8: Navigation route dengan Future Function

### Langkah 1: Buat file baru navigation_first.dart
Buatlah file baru ini di project lib Anda.

### Langkah 2: Isi kode navigation_first.dart

<img width="300" alt="image" src="gambar/image-41.png">

> **Soal 15**
> 
> * Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.
>
> * Silakan ganti dengan warna tema favorit Anda.
>
>   <img width="300" alt="image" src="gambar/image-42.png">

### Langkah 3: Tambah method di class _NavigationFirstState
Tambahkan method ini.

<img width="450" alt="image" src="gambar/image-44.png">

### Langkah 4: Buat file baru navigation_second.dart
Buat file baru ini di project lib Anda. Silakan jika ingin mengelompokkan view menjadi satu folder dan sesuaikan impor yang dibutuhkan.

<img width="300" alt="image" src="gambar/image-43.png">

### Langkah 5: Buat class NavigationSecond dengan StatefulWidget

<img width="300" alt="image" src="gambar/image-58.png">

### Langkah 6: Edit main.dart
Lakukan edit properti home.

<img width="300" alt="image" src="gambar/image-46.png">

### Langkah 7: Run
Lakukan run, jika terjadi error silakan diperbaiki.

> **Soal 16**
> 
> * Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
>
>   <img width="200" alt="gif" src="gambar/praktikum 8.gif">
>
>   Setelah klik Change Color maka kita diarahkan ke NavigationSecond. Setiap kali tombol di layar NavigationSecond, variabel color diatur sesuai dengan warna yang sesuai dengan tombol yang diklik . Setelah itu, menggunakan Navigator.pop(context, color), warna tersebut dikirim kembali ke layar NavigationFirst. Ketika kita kembali ke NavigationFirst, warna yang dikirim kembali digunakan untuk mengatur warna latar belakang layar (backgroundColor: color).
>
> * Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!
>
>   <img width="300" alt="image" src="gambar/image-47.png">
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 16".
>
>   <img width="200" alt="gif" src="gambar/praktikum 8-1.gif">


## Praktikum 9: Memanfaatkan async/await dengan Widget Dialog

### Langkah 1: Buat file baru navigation_dialog.dart
Buat file dart baru di folder lib project Anda.

<img width="300" alt="image" src="gambar/image-48.png">

### Langkah 2: Isi kode navigation_dialog.dart

<img width="300" alt="image" src="gambar/image-53.png">

### Langkah 3: Tambah method async

<img width="300" alt="image" src="gambar/image-55.png">

### Langkah 4: Panggil method di ElevatedButton

<img width="300" alt="image" src="gambar/image-51.png">

### Langkah 5: Edit main.dart
Ubah properti home

<img width="300" alt="image" src="gambar/image-52.png">

### Langkah 6: Run
Coba ganti warna background dengan widget dialog tersebut. Jika terjadi error, silakan diperbaiki. Jika berhasil, akan tampil seperti gambar berikut.

<img width="300" alt="image" src="gambar/image-56.png">

> **Soal 17**
>
> * Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?
>
>   <img width="200" alt="gif" src="gambar/praktikum 9.gif">
>
>   Ketika kita klik tombol "Change Color" di layar NavigationDialogScreen, dialog muncul meminta kita untuk memilih warna. Setelah memilih warna dan menutup dialog, warna latar belakang layar seharusnya berubah, tapi pada kode yang diberikan, pembaruan warna tidak terjadi karena dalam fungsi _showColordialog, pemanggilan setState menggunakan nilai yang sama seperti sebelumnya (color = color). Untuk memperbaikinya, kita perlu menyimpan nilai warna yang dipilih dari dialog dan menggunakan nilai itu dalam pemanggilan setState untuk memastikan pembaruan warna yang benar setelah memilih warna dari dialog. 
>
> * Gantilah 3 warna pada langkah 3 dengan warna favorit Anda!
>
>   <img width="300" alt="image" src="gambar/image-57.png">
>
> * Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 17".
>
>   <img width="200" alt="gif" src="gambar/praktikum 9-1.gif">
