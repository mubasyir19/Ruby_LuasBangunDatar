class Luas_Bangun_Datar
    def luasPersegi sisi
        luas = sisi * sisi
        print "Luas Persegi = ",luas
    end
    def luasLingkaran jari
        luas = 3.14 * jari * jari
        print "Luas Lingkaran = ",luas
    end
    def luasPersegiPanjang panjang, lebar
        luas = panjang * lebar
        print "Luas Persegi Panjang = ",luas
    end
    def luasSegitiga alas, tinggi
        luas = (alas * tinggi) / 2
        print "Luas Segitiga = ",luas
    end 
end

def menu
    hitungLuas = Luas_Bangun_Datar.new
    puts "---------------------------"
    puts " PROGRAM LUAS BANGUN DATAR "
    puts "---------------------------"
    puts "| 1. Luas Persegi         |"
    puts "| 2. Luas Lingkaran       |"
    puts "| 3. Luas Persegi Panjang |"
    puts "| 4. Luas Segitiga        |"
    puts "| 5. Exit                 |"
    puts "---------------------------"
    print "Masukkan Pilihan Anda : "
    pilih = gets.to_i
    if pilih == 1
        print "Masukkan sisi : "
        sisi = gets.to_i
        luasBangun =  hitungLuas.luasPersegi(sisi)
        puts luasBangun
        balik()
        puts
    elsif pilih == 2
        print "Masukkan jari-jari : "
        jari = gets.to_f
        luasBangun = hitungLuas.luasLingkaran(jari)
        puts luasBangun
        balik()
        puts
    elsif pilih == 3 
        print "Masukkan panjang : "
        panjang = gets.to_i
        print "Masukkan lebar   : "
        lebar = gets.to_i
        luasBangun = hitungLuas.luasPersegiPanjang(panjang,lebar)
        puts luasBangun
        balik()
        puts
    elsif pilih == 4 
        print "Masukkan alas   : "
        alas = gets.to_i
        print "Masukkan tinggi : "
        tinggi = gets.to_i
        luasBangun = hitungLuas.luasSegitiga(alas,tinggi)
        puts luasBangun
        balik()
        puts
    elsif pilih == 5
        puts "------Terimakasih Atas Kunjungan Anda------"
        exit()
        puts
    else
        print "Pilihan tidak tersedia"
        puts
        menu()
    end
end

def balik
    print "Apakah Anda ingin kembali lagi? : "
    kembali = gets.chomp
    if kembali == "ya" 
        menu()
    elsif kembali == "tidak"
        puts "------Terimakasih Atas Kunjungan Anda------"
        exit()
    else
        print "Pilihan yang Anda masukkan salah"
        puts
    end
end

menu()