.class public Lcom/isw/android/corp/message/MiniPhoneLocation;
.super Ljava/lang/Object;
.source "MiniPhoneLocation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniPhoneLocation"

.field private static bConnecting:Z

.field public static currentLocTS:Ljava/lang/String;

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

.field public static newLocTS:Ljava/lang/String;

.field public static oplist:[Ljava/lang/String;

.field public static plBuff:[B

.field private static reconnectTimes:I

.field public static wkamLen:J

.field public static wkamUrl:Ljava/lang/String;

.field public static wkopLen:J

.field public static wkopUrl:Ljava/lang/String;

.field public static wkplLen:J

.field public static wkplUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniPhoneLocation;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 69
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniPhoneLocation;->bConnecting:Z

    .line 72
    sput-object v1, Lcom/isw/android/corp/message/MiniPhoneLocation;->currentLocTS:Ljava/lang/String;

    .line 73
    sput-object v1, Lcom/isw/android/corp/message/MiniPhoneLocation;->plBuff:[B

    .line 74
    sput-object v1, Lcom/isw/android/corp/message/MiniPhoneLocation;->oplist:[Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    .line 77
    sput-wide v2, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamLen:J

    .line 78
    sput-wide v2, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplLen:J

    .line 79
    sput-wide v2, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopLen:J

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamUrl:Ljava/lang/String;

    .line 82
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplUrl:Ljava/lang/String;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0
    .parameter

    .prologue
    .line 69
    sput p0, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 99
    invoke-static {}, Lcom/isw/android/corp/message/MiniPhoneLocation;->process()V

    return-void
.end method

.method public static getFixedTel(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;
    .locals 15
    .parameter "phoneNumber"

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x4

    const/4 v12, 0x0

    .line 673
    const-string v9, "MiniPhoneLocation"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "search area code phoneNumber = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v14, :cond_2

    .line 676
    invoke-virtual {p0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 677
    .local v8, searchNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .line 678
    .local v6, locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    const-string v9, "00852"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 679
    new-instance v6, Lcom/isw/android/corp/bean/LocInfoBean;

    .end local v6           #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    invoke-direct {v6}, Lcom/isw/android/corp/bean/LocInfoBean;-><init>()V

    .line 680
    .restart local v6       #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    const-string v9, "\u9999\u6e2f"

    iput-object v9, v6, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;

    .line 738
    .end local v6           #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    .end local v8           #searchNumber:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 683
    .restart local v6       #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    .restart local v8       #searchNumber:Ljava/lang/String;
    :cond_0
    const-string v9, "00853"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 684
    new-instance v6, Lcom/isw/android/corp/bean/LocInfoBean;

    .end local v6           #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    invoke-direct {v6}, Lcom/isw/android/corp/bean/LocInfoBean;-><init>()V

    .line 685
    .restart local v6       #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    const-string v9, "\u6fb3\u95e8"

    iput-object v9, v6, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;

    goto :goto_0

    .line 687
    :cond_1
    const-string v9, "00886"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 688
    new-instance v6, Lcom/isw/android/corp/bean/LocInfoBean;

    .end local v6           #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    invoke-direct {v6}, Lcom/isw/android/corp/bean/LocInfoBean;-><init>()V

    .line 689
    .restart local v6       #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    const-string v9, "\u53f0\u6e7e"

    iput-object v9, v6, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;

    goto :goto_0

    .line 693
    .end local v6           #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    .end local v8           #searchNumber:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 694
    .local v4, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 696
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v13, :cond_3

    .line 697
    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 698
    .restart local v8       #searchNumber:Ljava/lang/String;
    const-string v9, "MiniPhoneLocation"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "searchNumber = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/areacode.dat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 700
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 701
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 702
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    .line 703
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 704
    .local v7, s:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v7

    .line 705
    :goto_1
    if-nez v7, :cond_6

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .line 726
    .end local v3           #file:Ljava/io/File;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #s:Ljava/lang/String;
    .end local v8           #searchNumber:Ljava/lang/String;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 727
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 728
    const/4 v0, 0x0

    .line 730
    :cond_4
    if-eqz v4, :cond_5

    .line 731
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 732
    const/4 v4, 0x0

    .line 738
    :cond_5
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 706
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #s:Ljava/lang/String;
    .restart local v8       #searchNumber:Ljava/lang/String;
    :cond_6
    :try_start_4
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 707
    :cond_7
    new-instance v6, Lcom/isw/android/corp/bean/LocInfoBean;

    invoke-direct {v6}, Lcom/isw/android/corp/bean/LocInfoBean;-><init>()V

    .line 708
    .restart local v6       #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    const-string v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iput-object v9, v6, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 726
    if-eqz v1, :cond_10

    .line 727
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 728
    const/4 v0, 0x0

    .line 730
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_4
    if-eqz v5, :cond_8

    .line 731
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_f

    .line 732
    const/4 v4, 0x0

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 734
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 735
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .local v2, e:Ljava/io/IOException;
    :goto_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2           #e:Ljava/io/IOException;
    :cond_8
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 711
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v6           #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :cond_9
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    move-result-object v7

    goto :goto_1

    .line 714
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v5           #fr:Ljava/io/FileReader;
    .end local v7           #s:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    :cond_a
    :try_start_8
    invoke-static {}, Lcom/isw/android/corp/util/InitFuncs;->copyPreAreaCodeData()V

    .line 715
    invoke-static {p0}, Lcom/isw/android/corp/message/MiniPhoneLocation;->getFixedTel(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_2

    .line 718
    .end local v3           #file:Ljava/io/File;
    .end local v8           #searchNumber:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 719
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 726
    if-eqz v0, :cond_b

    .line 727
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 728
    const/4 v0, 0x0

    .line 730
    :cond_b
    if-eqz v4, :cond_5

    .line 731
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 732
    const/4 v4, 0x0

    goto :goto_3

    .line 734
    :catch_2
    move-exception v2

    .line 735
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 720
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 721
    .restart local v2       #e:Ljava/io/IOException;
    :goto_7
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 726
    if-eqz v0, :cond_c

    .line 727
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 728
    const/4 v0, 0x0

    .line 730
    :cond_c
    if-eqz v4, :cond_5

    .line 731
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 732
    const/4 v4, 0x0

    goto :goto_3

    .line 734
    :catch_4
    move-exception v2

    .line 735
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 722
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 723
    .local v2, e:Ljava/lang/Exception;
    :goto_8
    :try_start_d
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 726
    if-eqz v0, :cond_d

    .line 727
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 728
    const/4 v0, 0x0

    .line 730
    :cond_d
    if-eqz v4, :cond_5

    .line 731
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 732
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 734
    :catch_6
    move-exception v2

    .line 735
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 724
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 726
    :goto_9
    if-eqz v0, :cond_e

    .line 727
    :try_start_f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 728
    const/4 v0, 0x0

    .line 730
    :cond_e
    if-eqz v4, :cond_f

    .line 731
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 732
    const/4 v4, 0x0

    .line 737
    :cond_f
    :goto_a
    throw v9

    .line 734
    :catch_7
    move-exception v2

    .line 735
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 734
    .end local v2           #e:Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 735
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 724
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v8       #searchNumber:Ljava/lang/String;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_9

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #s:Ljava/lang/String;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_9

    .line 722
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v7           #s:Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_8

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #s:Ljava/lang/String;
    :catch_a
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_8

    .line 720
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v7           #s:Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #s:Ljava/lang/String;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_7

    .line 718
    .end local v4           #fr:Ljava/io/FileReader;
    .end local v7           #s:Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_d
    move-exception v2

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_6

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v7       #s:Ljava/lang/String;
    :catch_e
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_6

    .line 734
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    .restart local v6       #locInfoBean:Lcom/isw/android/corp/bean/LocInfoBean;
    :catch_f
    move-exception v2

    goto/16 :goto_5

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_10
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method public static getLocInfo(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;
    .locals 48
    .parameter "phone"

    .prologue
    .line 381
    move-object/from16 v8, p0

    .line 382
    .local v8, areacodePhone:Ljava/lang/String;
    new-instance v10, Lcom/isw/android/corp/bean/LocInfoBean;

    invoke-direct {v10}, Lcom/isw/android/corp/bean/LocInfoBean;-><init>()V

    .line 384
    .local v10, bean:Lcom/isw/android/corp/bean/LocInfoBean;
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1

    .line 668
    .end local v10           #bean:Lcom/isw/android/corp/bean/LocInfoBean;
    :cond_0
    :goto_0
    return-object v10

    .line 388
    .restart local v10       #bean:Lcom/isw/android/corp/bean/LocInfoBean;
    :cond_1
    const-string v40, ""

    .line 389
    .local v40, province:Ljava/lang/String;
    const-string v16, ""

    .line 390
    .local v16, city:Ljava/lang/String;
    const-string v37, ""

    .line 394
    .local v37, operator:Ljava/lang/String;
    const/16 v28, 0x0

    .line 395
    .local v28, in:Ljava/io/BufferedInputStream;
    const/16 v24, 0x0

    .line 396
    .local v24, fr:Ljava/io/FileReader;
    const/4 v13, 0x0

    .line 398
    .local v13, br:Ljava/io/BufferedReader;
    sget-object v42, Lcom/isw/android/corp/message/MiniPhoneLocation;->currentLocTS:Ljava/lang/String;

    if-nez v42, :cond_2

    .line 399
    const-string v42, "currentLocTS"

    const-string v43, "20120719"

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    sput-object v42, Lcom/isw/android/corp/message/MiniPhoneLocation;->currentLocTS:Ljava/lang/String;

    .line 402
    :cond_2
    new-instance v42, Ljava/lang/StringBuilder;

    sget-object v43, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "/wkpl."

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/isw/android/corp/message/MiniPhoneLocation;->currentLocTS:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ".bin"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 403
    .local v35, locwkpl:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    sget-object v43, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "/wkam."

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/isw/android/corp/message/MiniPhoneLocation;->currentLocTS:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ".dat"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 404
    .local v33, locwkam:Ljava/lang/String;
    new-instance v42, Ljava/lang/StringBuilder;

    sget-object v43, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "/wkop."

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/isw/android/corp/message/MiniPhoneLocation;->currentLocTS:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ".dat"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 407
    .local v34, locwkop:Ljava/lang/String;
    :try_start_0
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "phone: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 411
    .local v11, begin:Ljava/util/Date;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v42

    const/16 v43, 0xb

    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_1e

    .line 414
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v42

    add-int/lit8 v12, v42, -0xb

    .line 415
    .local v12, beginIndex:I
    add-int/lit8 v42, v12, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-virtual {v0, v12, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 416
    const-string v42, "1"

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_1a

    .line 417
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    .line 419
    .local v36, num:I
    new-instance v31, Ljava/io/File;

    new-instance v42, Ljava/lang/StringBuilder;

    sget-object v43, Lcom/isw/android/corp/util/LocalConfig;->locItemDir:Ljava/lang/String;

    invoke-static/range {v43 .. v43}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, "/"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 420
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ".l"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 419
    move-object/from16 v0, v31

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    .local v31, locItemFile:Ljava/io/File;
    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->exists()Z

    move-result v42

    if-eqz v42, :cond_8

    .line 423
    const-string v42, "MiniPhoneLocation"

    const-string v43, "localinfo from cache."

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static/range {v31 .. v31}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v42

    .line 428
    const-string v43, ","

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 429
    .local v32, locitem:[Ljava/lang/String;
    if-eqz v32, :cond_4

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v42, v0

    const/16 v43, 0x3

    move/from16 v0, v42

    move/from16 v1, v43

    if-lt v0, v1, :cond_4

    .line 430
    const/16 v42, 0x0

    aget-object v40, v32, v42

    .line 431
    const/16 v42, 0x1

    aget-object v16, v32, v42

    .line 432
    const/16 v42, 0x2

    aget-object v37, v32, v42

    .line 433
    const-string v42, ";"

    move-object/from16 v0, v37

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_3

    .line 434
    const/16 v42, 0x0

    .line 435
    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->length()I

    move-result v43

    add-int/lit8 v43, v43, -0x1

    .line 434
    move-object/from16 v0, v37

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 438
    :cond_3
    move-object/from16 v7, v40

    .line 439
    .local v7, _province:Ljava/lang/String;
    move-object/from16 v4, v16

    .line 440
    .local v4, _city:Ljava/lang/String;
    move-object/from16 v5, v37

    .line 441
    .local v5, _operator:Ljava/lang/String;
    move-object/from16 v6, p0

    .line 442
    .local v6, _phone:Ljava/lang/String;
    new-instance v42, Lcom/isw/android/corp/message/MiniPhoneLocation$2;

    move-object/from16 v0, v42

    invoke-direct {v0, v7, v4, v5, v6}, Lcom/isw/android/corp/message/MiniPhoneLocation$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {v42 .. v42}, Lcom/isw/android/corp/message/MiniPhoneLocation$2;->start()V

    .line 625
    .end local v4           #_city:Ljava/lang/String;
    .end local v5           #_operator:Ljava/lang/String;
    .end local v6           #_phone:Ljava/lang/String;
    .end local v7           #_province:Ljava/lang/String;
    .end local v12           #beginIndex:I
    .end local v31           #locItemFile:Ljava/io/File;
    .end local v32           #locitem:[Ljava/lang/String;
    .end local v36           #num:I
    :cond_4
    :goto_1
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "Spend Time:    "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v44, Ljava/util/Date;

    invoke-direct/range {v44 .. v44}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v44 .. v44}, Ljava/util/Date;->getTime()J

    move-result-wide v44

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v46

    sub-long v44, v44, v46

    invoke-virtual/range {v43 .. v45}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 632
    if-eqz v28, :cond_5

    .line 633
    :try_start_1
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedInputStream;->close()V

    .line 634
    const/16 v28, 0x0

    .line 642
    :cond_5
    if-eqz v24, :cond_6

    .line 643
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileReader;->close()V

    .line 644
    const/16 v24, 0x0

    .line 647
    :cond_6
    if-eqz v13, :cond_7

    .line 648
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 649
    const/4 v13, 0x0

    .line 657
    .end local v11           #begin:Ljava/util/Date;
    :cond_7
    :goto_2
    move-object/from16 v0, v40

    iput-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;

    .line 658
    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->city:Ljava/lang/String;

    .line 659
    move-object/from16 v0, v37

    iput-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->operator:Ljava/lang/String;

    .line 661
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "province: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "city: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->city:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "operator: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->operator:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->province:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_0

    iget-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->city:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 665
    iget-object v0, v10, Lcom/isw/android/corp/bean/LocInfoBean;->operator:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v42 .. v42}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_0

    .line 666
    invoke-static {v8}, Lcom/isw/android/corp/message/MiniPhoneLocation;->getFixedTel(Ljava/lang/String;)Lcom/isw/android/corp/bean/LocInfoBean;

    move-result-object v10

    goto/16 :goto_0

    .line 455
    .restart local v11       #begin:Ljava/util/Date;
    .restart local v12       #beginIndex:I
    .restart local v31       #locItemFile:Ljava/io/File;
    .restart local v36       #num:I
    :cond_8
    const/16 v42, 0x5

    :try_start_2
    move/from16 v0, v42

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 456
    .local v19, data:[B
    const/16 v38, 0x0

    .line 457
    .local v38, pid:B
    const/16 v26, 0x0

    .line 458
    .local v26, from:I
    const/16 v20, 0x0

    .line 459
    .local v20, diff:S
    const/4 v15, 0x0

    .line 460
    .local v15, cid:B
    const/4 v9, 0x0

    .line 474
    .local v9, bFound:Z
    new-instance v29, Ljava/io/BufferedInputStream;

    new-instance v42, Ljava/io/FileInputStream;

    .line 475
    move-object/from16 v0, v42

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 481
    .end local v28           #in:Ljava/io/BufferedInputStream;
    .local v29, in:Ljava/io/BufferedInputStream;
    :cond_9
    :goto_3
    const/16 v42, 0x0

    const/16 v43, 0x5

    :try_start_3
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v42

    const/16 v43, 0x5

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_f

    .line 532
    :goto_4
    invoke-virtual/range {v29 .. v29}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_6

    .line 533
    const/16 v28, 0x0

    .line 538
    .end local v29           #in:Ljava/io/BufferedInputStream;
    .restart local v28       #in:Ljava/io/BufferedInputStream;
    if-eqz v9, :cond_15

    .line 539
    :try_start_4
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    .local v23, file:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v42

    if-eqz v42, :cond_b

    .line 541
    new-instance v25, Ljava/io/FileReader;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_1

    .line 542
    .end local v24           #fr:Ljava/io/FileReader;
    .local v25, fr:Ljava/io/FileReader;
    :try_start_5
    new-instance v14, Ljava/io/BufferedReader;

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_7

    .line 543
    .end local v13           #br:Ljava/io/BufferedReader;
    .local v14, br:Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v41

    .line 544
    .local v41, s:Ljava/lang/String;
    :goto_5
    if-nez v41, :cond_11

    .line 575
    :cond_a
    :goto_6
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_8

    .line 576
    const/16 v24, 0x0

    .line 577
    .end local v25           #fr:Ljava/io/FileReader;
    .restart local v24       #fr:Ljava/io/FileReader;
    :try_start_7
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_9

    .line 578
    const/4 v13, 0x0

    .line 595
    .end local v14           #br:Ljava/io/BufferedReader;
    .end local v23           #file:Ljava/io/File;
    .end local v41           #s:Ljava/lang/String;
    .restart local v13       #br:Ljava/io/BufferedReader;
    :cond_b
    :goto_7
    :try_start_8
    sget-object v42, Lcom/isw/android/corp/message/MiniPhoneLocation;->oplist:[Ljava/lang/String;

    if-nez v42, :cond_c

    .line 596
    const-string v42, "MiniPhoneLocation"

    const-string v43, "Init oplist..."

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-static/range {v34 .. v34}, Lcom/isw/android/corp/message/MiniPhoneLocation;->loadOperatorFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    const-string v43, ";"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    sput-object v42, Lcom/isw/android/corp/message/MiniPhoneLocation;->oplist:[Ljava/lang/String;

    .line 600
    :cond_c
    const/16 v42, 0x0

    const/16 v43, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v39

    .line 601
    .local v39, prenum:Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, i:I
    :goto_8
    sget-object v42, Lcom/isw/android/corp/message/MiniPhoneLocation;->oplist:[Ljava/lang/String;

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v27

    move/from16 v1, v42

    if-lt v0, v1, :cond_18

    .line 608
    :goto_9
    const-string v42, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_4

    .line 610
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-static/range {v40 .. v40}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v43, ","

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ","

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 611
    move-object/from16 v0, v42

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ";"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    .line 610
    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 612
    new-instance v43, Ljava/lang/StringBuilder;

    sget-object v44, Lcom/isw/android/corp/util/LocalConfig;->locItemDir:Ljava/lang/String;

    invoke-static/range {v44 .. v44}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 613
    move-object/from16 v0, v43

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ".l"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    .line 612
    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 610
    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    .line 626
    .end local v9           #bFound:Z
    .end local v11           #begin:Ljava/util/Date;
    .end local v12           #beginIndex:I
    .end local v15           #cid:B
    .end local v19           #data:[B
    .end local v20           #diff:S
    .end local v26           #from:I
    .end local v27           #i:I
    .end local v31           #locItemFile:Ljava/io/File;
    .end local v36           #num:I
    .end local v38           #pid:B
    .end local v39           #prenum:Ljava/lang/String;
    :catch_0
    move-exception v22

    .line 627
    .local v22, ex:Ljava/lang/Exception;
    :goto_a
    :try_start_9
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "ex: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 632
    if-eqz v28, :cond_d

    .line 633
    :try_start_a
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedInputStream;->close()V

    .line 634
    const/16 v28, 0x0

    .line 642
    :cond_d
    if-eqz v24, :cond_e

    .line 643
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileReader;->close()V

    .line 644
    const/16 v24, 0x0

    .line 647
    :cond_e
    if-eqz v13, :cond_7

    .line 648
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 649
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 482
    .end local v22           #ex:Ljava/lang/Exception;
    .end local v28           #in:Ljava/io/BufferedInputStream;
    .restart local v9       #bFound:Z
    .restart local v11       #begin:Ljava/util/Date;
    .restart local v12       #beginIndex:I
    .restart local v15       #cid:B
    .restart local v19       #data:[B
    .restart local v20       #diff:S
    .restart local v26       #from:I
    .restart local v29       #in:Ljava/io/BufferedInputStream;
    .restart local v31       #locItemFile:Ljava/io/File;
    .restart local v36       #num:I
    .restart local v38       #pid:B
    :cond_f
    const/16 v42, 0x0

    :try_start_b
    aget-byte v42, v19, v42

    if-nez v42, :cond_10

    const/16 v42, 0x1

    aget-byte v42, v19, v42

    if-nez v42, :cond_10

    .line 483
    const/16 v42, 0x4

    aget-byte v38, v19, v42

    .line 484
    goto/16 :goto_3

    .line 504
    :cond_10
    const/16 v42, 0x0

    aget-byte v42, v19, v42

    move/from16 v0, v42

    add-int/lit16 v0, v0, 0x100

    move/from16 v42, v0

    move/from16 v0, v42

    rem-int/lit16 v0, v0, 0x100

    move/from16 v42, v0

    move/from16 v0, v42

    mul-int/lit16 v0, v0, 0x100

    move/from16 v42, v0

    move/from16 v0, v42

    mul-int/lit16 v0, v0, 0x100

    move/from16 v42, v0

    .line 505
    const/16 v43, 0x1

    aget-byte v43, v19, v43

    move/from16 v0, v43

    add-int/lit16 v0, v0, 0x100

    move/from16 v43, v0

    move/from16 v0, v43

    rem-int/lit16 v0, v0, 0x100

    move/from16 v43, v0

    move/from16 v0, v43

    mul-int/lit16 v0, v0, 0x100

    move/from16 v43, v0

    .line 504
    add-int v42, v42, v43

    .line 506
    const/16 v43, 0x2

    aget-byte v43, v19, v43

    move/from16 v0, v43

    add-int/lit16 v0, v0, 0x100

    move/from16 v43, v0

    move/from16 v0, v43

    rem-int/lit16 v0, v0, 0x100

    move/from16 v43, v0

    .line 504
    add-int v26, v42, v43

    .line 516
    const/16 v42, 0x3

    aget-byte v42, v19, v42

    const/16 v42, 0x4

    aget-byte v42, v19, v42

    move/from16 v0, v42

    add-int/lit16 v0, v0, 0x100

    move/from16 v42, v0

    move/from16 v0, v42

    rem-int/lit16 v0, v0, 0x100

    move/from16 v42, v0

    add-int/lit8 v42, v42, 0x0

    move/from16 v0, v42

    int-to-short v0, v0

    move/from16 v20, v0

    .line 518
    move/from16 v0, v36

    move/from16 v1, v26

    if-lt v0, v1, :cond_9

    add-int v42, v26, v20

    move/from16 v0, v36

    move/from16 v1, v42

    if-gt v0, v1, :cond_9

    .line 519
    const/16 v42, 0x3

    aget-byte v42, v19, v42
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_6

    shr-int/lit8 v42, v42, 0x2

    move/from16 v0, v42

    int-to-byte v15, v0

    .line 520
    const/4 v9, 0x1

    .line 521
    goto/16 :goto_4

    .line 545
    .end local v13           #br:Ljava/io/BufferedReader;
    .end local v24           #fr:Ljava/io/FileReader;
    .end local v29           #in:Ljava/io/BufferedInputStream;
    .restart local v14       #br:Ljava/io/BufferedReader;
    .restart local v23       #file:Ljava/io/File;
    .restart local v25       #fr:Ljava/io/FileReader;
    .restart local v28       #in:Ljava/io/BufferedInputStream;
    .restart local v41       #s:Ljava/lang/String;
    :cond_11
    :try_start_c
    new-instance v42, Ljava/lang/StringBuilder;

    const-string v43, "p"

    invoke-direct/range {v42 .. v43}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v42

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_14

    .line 547
    const/16 v42, 0x2c

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->indexOf(I)I

    move-result v42

    add-int/lit8 v42, v42, 0x1

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v40

    .line 548
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v41

    .line 549
    if-eqz v41, :cond_a

    .line 550
    const-string v42, ","

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 551
    .local v17, clist:[Ljava/lang/String;
    const-string v18, ""

    .line 552
    .local v18, ct:Ljava/lang/String;
    const/16 v30, 0x0

    .local v30, j:I
    :goto_b
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v42, v0

    move/from16 v0, v30

    move/from16 v1, v42

    if-ge v0, v1, :cond_a

    .line 553
    aget-object v18, v17, v30

    .line 554
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v18

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v42

    if-eqz v42, :cond_13

    .line 557
    const/16 v42, 0x0

    .line 558
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v43

    .line 559
    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    .line 560
    invoke-virtual/range {v44 .. v44}, Ljava/lang/String;->length()I

    move-result v44

    .line 558
    sub-int v43, v43, v44

    .line 556
    move-object/from16 v0, v18

    move/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 561
    const-string v42, "\u5317\u4eac"

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_12

    .line 562
    const-string v42, "\u4e0a\u6d77"

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_12

    .line 563
    const-string v42, "\u5929\u6d25"

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-nez v42, :cond_12

    .line 564
    const-string v42, "\u91cd\u5e86"

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 565
    :cond_12
    const-string v16, ""

    .line 567
    goto/16 :goto_6

    .line 552
    :cond_13
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_b

    .line 573
    .end local v17           #clist:[Ljava/lang/String;
    .end local v18           #ct:Ljava/lang/String;
    .end local v30           #j:I
    :cond_14
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_8

    move-result-object v41

    goto/16 :goto_5

    .line 587
    .end local v14           #br:Ljava/io/BufferedReader;
    .end local v23           #file:Ljava/io/File;
    .end local v25           #fr:Ljava/io/FileReader;
    .end local v41           #s:Ljava/lang/String;
    .restart local v13       #br:Ljava/io/BufferedReader;
    .restart local v24       #fr:Ljava/io/FileReader;
    :cond_15
    :try_start_d
    const-string v42, "MiniPhoneLocation"

    const-string v43, "num not exist!"

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_7

    .line 628
    .end local v9           #bFound:Z
    .end local v11           #begin:Ljava/util/Date;
    .end local v12           #beginIndex:I
    .end local v15           #cid:B
    .end local v19           #data:[B
    .end local v20           #diff:S
    .end local v26           #from:I
    .end local v31           #locItemFile:Ljava/io/File;
    .end local v36           #num:I
    .end local v38           #pid:B
    :catch_1
    move-exception v21

    .line 629
    .local v21, err:Ljava/lang/Error;
    :goto_c
    :try_start_e
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "err: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 632
    if-eqz v28, :cond_16

    .line 633
    :try_start_f
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedInputStream;->close()V

    .line 634
    const/16 v28, 0x0

    .line 642
    :cond_16
    if-eqz v24, :cond_17

    .line 643
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileReader;->close()V

    .line 644
    const/16 v24, 0x0

    .line 647
    :cond_17
    if-eqz v13, :cond_7

    .line 648
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    .line 649
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 602
    .end local v21           #err:Ljava/lang/Error;
    .restart local v9       #bFound:Z
    .restart local v11       #begin:Ljava/util/Date;
    .restart local v12       #beginIndex:I
    .restart local v15       #cid:B
    .restart local v19       #data:[B
    .restart local v20       #diff:S
    .restart local v26       #from:I
    .restart local v27       #i:I
    .restart local v31       #locItemFile:Ljava/io/File;
    .restart local v36       #num:I
    .restart local v38       #pid:B
    .restart local v39       #prenum:Ljava/lang/String;
    :cond_18
    :try_start_10
    sget-object v42, Lcom/isw/android/corp/message/MiniPhoneLocation;->oplist:[Ljava/lang/String;

    aget-object v42, v42, v27

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v42

    if-eqz v42, :cond_19

    .line 603
    sget-object v42, Lcom/isw/android/corp/message/MiniPhoneLocation;->oplist:[Ljava/lang/String;

    aget-object v42, v42, v27

    const-string v43, "#"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v42

    const/16 v43, 0x0

    aget-object v37, v42, v43

    .line 604
    goto/16 :goto_9

    .line 601
    :cond_19
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_8

    .line 619
    .end local v9           #bFound:Z
    .end local v15           #cid:B
    .end local v19           #data:[B
    .end local v20           #diff:S
    .end local v26           #from:I
    .end local v27           #i:I
    .end local v31           #locItemFile:Ljava/io/File;
    .end local v36           #num:I
    .end local v38           #pid:B
    .end local v39           #prenum:Ljava/lang/String;
    :cond_1a
    const-string v42, "MiniPhoneLocation"

    const-string v43, "Mobile first capital is invalid"

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_1

    .line 630
    .end local v11           #begin:Ljava/util/Date;
    .end local v12           #beginIndex:I
    :catchall_0
    move-exception v42

    .line 632
    :goto_d
    if-eqz v28, :cond_1b

    .line 633
    :try_start_11
    invoke-virtual/range {v28 .. v28}, Ljava/io/BufferedInputStream;->close()V

    .line 634
    const/16 v28, 0x0

    .line 642
    :cond_1b
    if-eqz v24, :cond_1c

    .line 643
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileReader;->close()V

    .line 644
    const/16 v24, 0x0

    .line 647
    :cond_1c
    if-eqz v13, :cond_1d

    .line 648
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 649
    const/4 v13, 0x0

    .line 655
    :cond_1d
    :goto_e
    throw v42

    .line 622
    .restart local v11       #begin:Ljava/util/Date;
    :cond_1e
    :try_start_12
    const-string v42, "MiniPhoneLocation"

    const-string v43, "Mobile number is invalid"

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/lang/Error; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_1

    .line 652
    .end local v11           #begin:Ljava/util/Date;
    .restart local v22       #ex:Ljava/lang/Exception;
    :catch_2
    move-exception v22

    .line 653
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "ex: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 652
    .end local v22           #ex:Ljava/lang/Exception;
    .restart local v21       #err:Ljava/lang/Error;
    :catch_3
    move-exception v22

    .line 653
    .restart local v22       #ex:Ljava/lang/Exception;
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "ex: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 652
    .end local v21           #err:Ljava/lang/Error;
    .end local v22           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v22

    .line 653
    .restart local v22       #ex:Ljava/lang/Exception;
    const-string v43, "MiniPhoneLocation"

    new-instance v44, Ljava/lang/StringBuilder;

    const-string v45, "ex: "

    invoke-direct/range {v44 .. v45}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 652
    .end local v22           #ex:Ljava/lang/Exception;
    .restart local v11       #begin:Ljava/util/Date;
    :catch_5
    move-exception v22

    .line 653
    .restart local v22       #ex:Ljava/lang/Exception;
    const-string v42, "MiniPhoneLocation"

    new-instance v43, Ljava/lang/StringBuilder;

    const-string v44, "ex: "

    invoke-direct/range {v43 .. v44}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 630
    .end local v22           #ex:Ljava/lang/Exception;
    .end local v28           #in:Ljava/io/BufferedInputStream;
    .restart local v9       #bFound:Z
    .restart local v12       #beginIndex:I
    .restart local v15       #cid:B
    .restart local v19       #data:[B
    .restart local v20       #diff:S
    .restart local v26       #from:I
    .restart local v29       #in:Ljava/io/BufferedInputStream;
    .restart local v31       #locItemFile:Ljava/io/File;
    .restart local v36       #num:I
    .restart local v38       #pid:B
    :catchall_1
    move-exception v42

    move-object/from16 v28, v29

    .end local v29           #in:Ljava/io/BufferedInputStream;
    .restart local v28       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_d

    .end local v24           #fr:Ljava/io/FileReader;
    .restart local v23       #file:Ljava/io/File;
    .restart local v25       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v42

    move-object/from16 v24, v25

    .end local v25           #fr:Ljava/io/FileReader;
    .restart local v24       #fr:Ljava/io/FileReader;
    goto/16 :goto_d

    .end local v13           #br:Ljava/io/BufferedReader;
    .end local v24           #fr:Ljava/io/FileReader;
    .restart local v14       #br:Ljava/io/BufferedReader;
    .restart local v25       #fr:Ljava/io/FileReader;
    :catchall_3
    move-exception v42

    move-object v13, v14

    .end local v14           #br:Ljava/io/BufferedReader;
    .restart local v13       #br:Ljava/io/BufferedReader;
    move-object/from16 v24, v25

    .end local v25           #fr:Ljava/io/FileReader;
    .restart local v24       #fr:Ljava/io/FileReader;
    goto/16 :goto_d

    .end local v13           #br:Ljava/io/BufferedReader;
    .restart local v14       #br:Ljava/io/BufferedReader;
    .restart local v41       #s:Ljava/lang/String;
    :catchall_4
    move-exception v42

    move-object v13, v14

    .end local v14           #br:Ljava/io/BufferedReader;
    .restart local v13       #br:Ljava/io/BufferedReader;
    goto/16 :goto_d

    .line 628
    .end local v23           #file:Ljava/io/File;
    .end local v28           #in:Ljava/io/BufferedInputStream;
    .end local v41           #s:Ljava/lang/String;
    .restart local v29       #in:Ljava/io/BufferedInputStream;
    :catch_6
    move-exception v21

    move-object/from16 v28, v29

    .end local v29           #in:Ljava/io/BufferedInputStream;
    .restart local v28       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_c

    .end local v24           #fr:Ljava/io/FileReader;
    .restart local v23       #file:Ljava/io/File;
    .restart local v25       #fr:Ljava/io/FileReader;
    :catch_7
    move-exception v21

    move-object/from16 v24, v25

    .end local v25           #fr:Ljava/io/FileReader;
    .restart local v24       #fr:Ljava/io/FileReader;
    goto/16 :goto_c

    .end local v13           #br:Ljava/io/BufferedReader;
    .end local v24           #fr:Ljava/io/FileReader;
    .restart local v14       #br:Ljava/io/BufferedReader;
    .restart local v25       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v21

    move-object v13, v14

    .end local v14           #br:Ljava/io/BufferedReader;
    .restart local v13       #br:Ljava/io/BufferedReader;
    move-object/from16 v24, v25

    .end local v25           #fr:Ljava/io/FileReader;
    .restart local v24       #fr:Ljava/io/FileReader;
    goto/16 :goto_c

    .end local v13           #br:Ljava/io/BufferedReader;
    .restart local v14       #br:Ljava/io/BufferedReader;
    .restart local v41       #s:Ljava/lang/String;
    :catch_9
    move-exception v21

    move-object v13, v14

    .end local v14           #br:Ljava/io/BufferedReader;
    .restart local v13       #br:Ljava/io/BufferedReader;
    goto/16 :goto_c

    .line 626
    .end local v23           #file:Ljava/io/File;
    .end local v28           #in:Ljava/io/BufferedInputStream;
    .end local v41           #s:Ljava/lang/String;
    .restart local v29       #in:Ljava/io/BufferedInputStream;
    :catch_a
    move-exception v22

    move-object/from16 v28, v29

    .end local v29           #in:Ljava/io/BufferedInputStream;
    .restart local v28       #in:Ljava/io/BufferedInputStream;
    goto/16 :goto_a

    .end local v24           #fr:Ljava/io/FileReader;
    .restart local v23       #file:Ljava/io/File;
    .restart local v25       #fr:Ljava/io/FileReader;
    :catch_b
    move-exception v22

    move-object/from16 v24, v25

    .end local v25           #fr:Ljava/io/FileReader;
    .restart local v24       #fr:Ljava/io/FileReader;
    goto/16 :goto_a

    .end local v13           #br:Ljava/io/BufferedReader;
    .end local v24           #fr:Ljava/io/FileReader;
    .restart local v14       #br:Ljava/io/BufferedReader;
    .restart local v25       #fr:Ljava/io/FileReader;
    :catch_c
    move-exception v22

    move-object v13, v14

    .end local v14           #br:Ljava/io/BufferedReader;
    .restart local v13       #br:Ljava/io/BufferedReader;
    move-object/from16 v24, v25

    .end local v25           #fr:Ljava/io/FileReader;
    .restart local v24       #fr:Ljava/io/FileReader;
    goto/16 :goto_a

    .end local v13           #br:Ljava/io/BufferedReader;
    .restart local v14       #br:Ljava/io/BufferedReader;
    .restart local v41       #s:Ljava/lang/String;
    :catch_d
    move-exception v22

    move-object v13, v14

    .end local v14           #br:Ljava/io/BufferedReader;
    .restart local v13       #br:Ljava/io/BufferedReader;
    goto/16 :goto_a
.end method

.method private static loadOperatorFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "filename"

    .prologue
    .line 345
    const-string v1, ""

    .line 346
    .local v1, content:Ljava/lang/String;
    const/4 v5, 0x0

    .line 348
    .local v5, input:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 350
    const-string v7, "MiniPhoneLocation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " does not exist!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 365
    if-eqz v5, :cond_0

    .line 366
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    const/4 v5, 0x0

    :cond_0
    :goto_0
    move-object v2, v1

    .line 374
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .local v2, content:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 369
    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 370
    .local v3, ex:Ljava/lang/Exception;
    const-string v7, "MiniPhoneLocation"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 355
    .end local v5           #input:Ljava/io/FileInputStream;
    .local v6, input:Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 356
    .local v0, buffer:[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 357
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    array-length v8, v0

    const-string v9, "UTF-8"

    invoke-direct {v2, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 358
    .end local v1           #content:Ljava/lang/String;
    .restart local v2       #content:Ljava/lang/String;
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 359
    const/4 v5, 0x0

    .line 365
    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    if-eqz v5, :cond_4

    .line 366
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 367
    const/4 v5, 0x0

    move-object v1, v2

    .end local v0           #buffer:[B
    .end local v2           #content:Ljava/lang/String;
    .end local v4           #file:Ljava/io/File;
    .restart local v1       #content:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object v2, v1

    .line 374
    .end local v1           #content:Ljava/lang/String;
    .restart local v2       #content:Ljava/lang/String;
    goto :goto_1

    .line 360
    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 361
    .restart local v3       #ex:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    const-string v7, "MiniPhoneLocation"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 365
    if-eqz v5, :cond_2

    .line 366
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 367
    const/4 v5, 0x0

    goto :goto_2

    .line 369
    :catch_2
    move-exception v3

    .line 370
    const-string v7, "MiniPhoneLocation"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 363
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 365
    :goto_4
    if-eqz v5, :cond_3

    .line 366
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 367
    const/4 v5, 0x0

    .line 372
    :cond_3
    :goto_5
    throw v7

    .line 369
    :catch_3
    move-exception v3

    .line 370
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v8, "MiniPhoneLocation"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 369
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v4       #file:Ljava/io/File;
    :catch_4
    move-exception v3

    .line 370
    .restart local v3       #ex:Ljava/lang/Exception;
    const-string v7, "MiniPhoneLocation"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #ex:Ljava/lang/Exception;
    :cond_4
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto :goto_2

    .line 363
    .end local v0           #buffer:[B
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #content:Ljava/lang/String;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto :goto_4

    .line 360
    .end local v0           #buffer:[B
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v1           #content:Ljava/lang/String;
    .end local v5           #input:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v2       #content:Ljava/lang/String;
    .restart local v6       #input:Ljava/io/FileInputStream;
    :catch_6
    move-exception v3

    move-object v5, v6

    .end local v6           #input:Ljava/io/FileInputStream;
    .restart local v5       #input:Ljava/io/FileInputStream;
    move-object v1, v2

    .end local v2           #content:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method private static declared-synchronized parser(Ljava/lang/String;)V
    .locals 24
    .parameter "phoneLocationResponse"

    .prologue
    .line 255
    const-class v21, Lcom/isw/android/corp/message/MiniPhoneLocation;

    monitor-enter v21

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 256
    const-string v20, "MiniPhoneLocation"

    const-string v22, "Warning! phoneLocationResponse is empty!"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :cond_0
    :goto_0
    monitor-exit v21

    return-void

    .line 261
    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 262
    .local v3, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 264
    .local v2, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 266
    const/4 v4, 0x0

    .line 267
    .local v4, doc:Lorg/w3c/dom/Document;
    new-instance v20, Ljava/io/ByteArrayInputStream;

    .line 268
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 267
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 270
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    .line 272
    .local v15, root:Lorg/w3c/dom/Element;
    const-string v20, "t"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 273
    .local v16, t:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    if-lez v20, :cond_2

    .line 274
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 275
    .local v5, e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 276
    .local v17, text:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_2

    .line 277
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    sput-object v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    .line 281
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v17           #text:Lorg/w3c/dom/Text;
    :cond_2
    const-string v20, "i"

    move-object/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 283
    .local v8, i:Lorg/w3c/dom/NodeList;
    const-wide/16 v12, 0x0

    .line 284
    .local v12, len:J
    const-string v19, ""

    .line 285
    .local v19, url:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, index:I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    .line 286
    invoke-interface {v8, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 288
    .local v9, iNode:Lorg/w3c/dom/Element;
    const-wide/16 v12, 0x0

    .line 289
    const-string v20, "l"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 290
    .local v11, l:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    if-lez v20, :cond_3

    .line 291
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 292
    .restart local v5       #e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    .line 293
    .restart local v17       #text:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_3

    .line 295
    :try_start_2
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v12

    .line 302
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v17           #text:Lorg/w3c/dom/Text;
    :cond_3
    :goto_2
    :try_start_3
    const-string v19, ""

    .line 303
    const-string v20, "u"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 304
    .local v18, u:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    if-lez v20, :cond_4

    .line 305
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 306
    .restart local v5       #e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 307
    .restart local v17       #text:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_4

    .line 308
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    .line 312
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v17           #text:Lorg/w3c/dom/Text;
    :cond_4
    const-string v20, "n"

    move-object/from16 v0, v20

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 313
    .local v14, n:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    if-lez v20, :cond_5

    .line 314
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 315
    .restart local v5       #e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 316
    .restart local v17       #text:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_5

    .line 317
    const-string v20, "wkam"

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 318
    sput-wide v12, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamLen:J

    .line 319
    sput-object v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamUrl:Ljava/lang/String;

    .line 285
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v17           #text:Lorg/w3c/dom/Text;
    :cond_5
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 296
    .end local v14           #n:Lorg/w3c/dom/NodeList;
    .end local v18           #u:Lorg/w3c/dom/NodeList;
    .restart local v5       #e:Lorg/w3c/dom/Element;
    .restart local v17       #text:Lorg/w3c/dom/Text;
    :catch_0
    move-exception v7

    .line 297
    .local v7, ex:Ljava/lang/Exception;
    const-string v20, "MiniPhoneLocation"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ex: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 332
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v8           #i:Lorg/w3c/dom/NodeList;
    .end local v9           #iNode:Lorg/w3c/dom/Element;
    .end local v10           #index:I
    .end local v11           #l:Lorg/w3c/dom/NodeList;
    .end local v12           #len:J
    .end local v15           #root:Lorg/w3c/dom/Element;
    .end local v16           #t:Lorg/w3c/dom/NodeList;
    .end local v17           #text:Lorg/w3c/dom/Text;
    .end local v19           #url:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 333
    .restart local v7       #ex:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    const-string v20, "MiniPhoneLocation"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "ex: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 255
    .end local v7           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v20

    monitor-exit v21

    throw v20

    .line 320
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #e:Lorg/w3c/dom/Element;
    .restart local v8       #i:Lorg/w3c/dom/NodeList;
    .restart local v9       #iNode:Lorg/w3c/dom/Element;
    .restart local v10       #index:I
    .restart local v11       #l:Lorg/w3c/dom/NodeList;
    .restart local v12       #len:J
    .restart local v14       #n:Lorg/w3c/dom/NodeList;
    .restart local v15       #root:Lorg/w3c/dom/Element;
    .restart local v16       #t:Lorg/w3c/dom/NodeList;
    .restart local v17       #text:Lorg/w3c/dom/Text;
    .restart local v18       #u:Lorg/w3c/dom/NodeList;
    .restart local v19       #url:Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v20, "wkpl"

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 321
    sput-wide v12, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplLen:J

    .line 322
    sput-object v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplUrl:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 335
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v8           #i:Lorg/w3c/dom/NodeList;
    .end local v9           #iNode:Lorg/w3c/dom/Element;
    .end local v10           #index:I
    .end local v11           #l:Lorg/w3c/dom/NodeList;
    .end local v12           #len:J
    .end local v14           #n:Lorg/w3c/dom/NodeList;
    .end local v15           #root:Lorg/w3c/dom/Element;
    .end local v16           #t:Lorg/w3c/dom/NodeList;
    .end local v17           #text:Lorg/w3c/dom/Text;
    .end local v18           #u:Lorg/w3c/dom/NodeList;
    .end local v19           #url:Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 336
    .local v6, err:Ljava/lang/Error;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Error;->printStackTrace()V

    .line 337
    const-string v20, "MiniPhoneLocation"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "err: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 323
    .end local v6           #err:Ljava/lang/Error;
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #e:Lorg/w3c/dom/Element;
    .restart local v8       #i:Lorg/w3c/dom/NodeList;
    .restart local v9       #iNode:Lorg/w3c/dom/Element;
    .restart local v10       #index:I
    .restart local v11       #l:Lorg/w3c/dom/NodeList;
    .restart local v12       #len:J
    .restart local v14       #n:Lorg/w3c/dom/NodeList;
    .restart local v15       #root:Lorg/w3c/dom/Element;
    .restart local v16       #t:Lorg/w3c/dom/NodeList;
    .restart local v17       #text:Lorg/w3c/dom/Text;
    .restart local v18       #u:Lorg/w3c/dom/NodeList;
    .restart local v19       #url:Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v20, "wkop"

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 324
    sput-wide v12, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopLen:J

    .line 325
    sput-object v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopUrl:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3
.end method

.method private static process()V
    .locals 23

    .prologue
    .line 100
    sget-boolean v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->bConnecting:Z

    if-eqz v18, :cond_0

    .line 101
    const-string v18, "MiniPhoneLocation"

    const-string v19, "Warning! bConnecting is true!"

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .local v17, url:Ljava/lang/String;
    :goto_0
    return-void

    .line 106
    .end local v17           #url:Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v19, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v18 .. v19}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 108
    const/16 v18, 0x1

    sput-boolean v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->bConnecting:Z

    .line 109
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    const-string v19, "/updateloc"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 109
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 111
    .restart local v17       #url:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, locResponse:Ljava/lang/String;
    invoke-static {v11}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 114
    const-string v18, "MiniPhoneLocation"

    const-string v19, "Warning! locResponse is empty!"

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 116
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "reconnectTimes: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v18, "MiniPhoneLocation"

    const-string v19, "Try reconnect to get locResponse!"

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    add-int/lit8 v18, v18, 0x1

    sput v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    .line 119
    invoke-static {}, Lcom/isw/android/corp/message/MiniPhoneLocation;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :cond_1
    :goto_1
    const/16 v18, 0x1

    sput v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    .line 246
    const/16 v18, 0x0

    sput-boolean v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->bConnecting:Z

    goto :goto_0

    .line 121
    :cond_2
    const/16 v18, 0x1

    :try_start_1
    sput v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 239
    .end local v11           #locResponse:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 240
    .local v8, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "ex: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    const/16 v18, 0x1

    sput v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    .line 246
    const/16 v18, 0x0

    sput-boolean v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->bConnecting:Z

    goto/16 :goto_0

    .line 124
    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v11       #locResponse:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "locResponse: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v11}, Lcom/isw/android/corp/message/MiniPhoneLocation;->parser(Ljava/lang/String;)V

    .line 126
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "newLocTS: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "wkamLen: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamLen:J

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", wkamUrl: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 128
    sget-object v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamUrl:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 127
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "wkplLen: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplLen:J

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", wkplUrl: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 130
    sget-object v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplUrl:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 129
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "wkopLen: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopLen:J

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", wkopUrl: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 132
    sget-object v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopUrl:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 131
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 135
    const/4 v3, 0x1

    .line 136
    .local v3, bAllComplete:Z
    const/4 v4, 0x1

    .line 139
    .local v4, bItemComplete:Z
    sget-wide v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplLen:J

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_4

    sget-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplUrl:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 140
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/wkpl."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 141
    sget-object v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 140
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, locwkpl:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    sget-wide v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplLen:J

    cmp-long v18, v18, v20

    if-eqz v18, :cond_a

    .line 144
    sget-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplUrl:Ljava/lang/String;

    .line 145
    sget-wide v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkplLen:J

    .line 144
    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-static {v0, v14, v1, v2}, Lcom/isw/android/corp/http/WinksHttp;->downloadOffsetDataURL(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    .line 146
    if-nez v4, :cond_9

    .line 147
    const/4 v3, 0x0

    .line 163
    .end local v14           #locwkpl:Ljava/lang/String;
    :cond_4
    :goto_2
    sget-wide v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamLen:J

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_5

    sget-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamUrl:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 164
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/wkam."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 165
    sget-object v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 164
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, locwkam:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    sget-wide v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamLen:J

    cmp-long v18, v18, v20

    if-eqz v18, :cond_c

    .line 168
    sget-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamUrl:Ljava/lang/String;

    .line 169
    sget-wide v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkamLen:J

    .line 168
    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-static {v0, v12, v1, v2}, Lcom/isw/android/corp/http/WinksHttp;->downloadOffsetDataURL(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    .line 170
    if-nez v4, :cond_b

    .line 171
    const/4 v3, 0x0

    .line 182
    .end local v12           #locwkam:Ljava/lang/String;
    :cond_5
    :goto_3
    sget-wide v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopLen:J

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_6

    sget-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopUrl:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 183
    new-instance v18, Ljava/lang/StringBuilder;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/wkop."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 184
    sget-object v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 183
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 185
    .local v13, locwkop:Ljava/lang/String;
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    sget-wide v20, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopLen:J

    cmp-long v18, v18, v20

    if-eqz v18, :cond_e

    .line 187
    sget-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopUrl:Ljava/lang/String;

    .line 188
    sget-wide v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->wkopLen:J

    .line 187
    move-object/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-static {v0, v13, v1, v2}, Lcom/isw/android/corp/http/WinksHttp;->downloadOffsetDataURL(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v4

    .line 189
    if-nez v4, :cond_d

    .line 190
    const/4 v3, 0x0

    .line 200
    .end local v13           #locwkop:Ljava/lang/String;
    :cond_6
    :goto_4
    if-eqz v3, :cond_1

    .line 201
    const-string v18, "lastlocUpdateTime"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 201
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v18, Ljava/io/File;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 206
    .local v10, list:[Ljava/io/File;
    if-eqz v10, :cond_7

    array-length v0, v10

    move/from16 v18, v0

    if-lez v18, :cond_7

    .line 207
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v9, v0, :cond_f

    .line 217
    .end local v9           #i:I
    :cond_7
    const/16 v18, 0x0

    sput-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->currentLocTS:Ljava/lang/String;

    .line 218
    const/16 v18, 0x0

    sput-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->plBuff:[B

    .line 219
    const/16 v18, 0x0

    sput-object v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->oplist:[Ljava/lang/String;

    .line 220
    const-string v18, "currentLocTS"

    sget-object v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v18, Ljava/io/File;

    sget-object v19, Lcom/isw/android/corp/util/LocalConfig;->locItemDir:Ljava/lang/String;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 224
    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 225
    .local v5, currentTime:J
    const-wide/16 v18, 0xa

    .line 226
    const-string v20, "updatePhoneLocPeroid"

    const-wide/16 v21, 0x7080

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 225
    invoke-static/range {v20 .. v21}, Lcom/isw/android/corp/util/LocalConfig;->getLong(Ljava/lang/String;Ljava/lang/Long;)J

    move-result-wide v20

    mul-long v18, v18, v20

    .line 226
    const-wide/16 v20, 0x3c

    .line 225
    mul-long v18, v18, v20

    .line 226
    const-wide/16 v20, 0x3e8

    .line 225
    mul-long v15, v18, v20

    .line 227
    .local v15, peroid:J
    if-eqz v10, :cond_1

    array-length v0, v10

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 228
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_6
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    .line 229
    aget-object v18, v10, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    sub-long v18, v5, v18

    cmp-long v18, v18, v15

    if-lez v18, :cond_8

    .line 230
    aget-object v18, v10, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 228
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 149
    .end local v5           #currentTime:J
    .end local v9           #i:I
    .end local v10           #list:[Ljava/io/File;
    .end local v15           #peroid:J
    .restart local v14       #locwkpl:Ljava/lang/String;
    :cond_9
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " Download "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 150
    const-string v20, " finished."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 149
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v18, Lcom/isw/android/corp/util/LocalConfig;->locDir:Ljava/lang/String;

    .line 151
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/isw/android/corp/util/ZipFiles;->upZipFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Unzip "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 154
    const-string v20, " finished."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 153
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 242
    .end local v3           #bAllComplete:Z
    .end local v4           #bItemComplete:Z
    .end local v11           #locResponse:Ljava/lang/String;
    .end local v14           #locwkpl:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 243
    .local v7, err:Ljava/lang/Error;
    :try_start_4
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "err: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    const/16 v18, 0x1

    sput v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    .line 246
    const/16 v18, 0x0

    sput-boolean v18, Lcom/isw/android/corp/message/MiniPhoneLocation;->bConnecting:Z

    goto/16 :goto_0

    .line 158
    .end local v7           #err:Ljava/lang/Error;
    .restart local v3       #bAllComplete:Z
    .restart local v4       #bItemComplete:Z
    .restart local v11       #locResponse:Ljava/lang/String;
    .restart local v14       #locwkpl:Ljava/lang/String;
    :cond_a
    :try_start_5
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " is not old."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 244
    .end local v3           #bAllComplete:Z
    .end local v4           #bItemComplete:Z
    .end local v11           #locResponse:Ljava/lang/String;
    .end local v14           #locwkpl:Ljava/lang/String;
    :catchall_0
    move-exception v18

    .line 245
    const/16 v19, 0x1

    sput v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->reconnectTimes:I

    .line 246
    const/16 v19, 0x0

    sput-boolean v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->bConnecting:Z

    .line 247
    throw v18

    .line 173
    .restart local v3       #bAllComplete:Z
    .restart local v4       #bItemComplete:Z
    .restart local v11       #locResponse:Ljava/lang/String;
    .restart local v12       #locwkam:Ljava/lang/String;
    :cond_b
    :try_start_6
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " Download "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 174
    const-string v20, " finished."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 173
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 177
    :cond_c
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " is not old."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 192
    .end local v12           #locwkam:Ljava/lang/String;
    .restart local v13       #locwkop:Ljava/lang/String;
    :cond_d
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, " Download "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 193
    const-string v20, " finished."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 192
    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 196
    :cond_e
    const-string v18, "MiniPhoneLocation"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " is not old."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 208
    .end local v13           #locwkop:Ljava/lang/String;
    .restart local v9       #i:I
    .restart local v10       #list:[Ljava/io/File;
    :cond_f
    aget-object v18, v10, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".dat"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_10

    aget-object v18, v10, v9

    .line 209
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, ".bin"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 210
    :cond_10
    aget-object v18, v10, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    .line 211
    sget-object v19, Lcom/isw/android/corp/message/MiniPhoneLocation;->newLocTS:Ljava/lang/String;

    .line 210
    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    .line 211
    if-nez v18, :cond_11

    .line 212
    aget-object v18, v10, v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1

    .line 207
    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5
.end method

.method public static update()V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/WinksTools;->canDownload(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v0, Lcom/isw/android/corp/message/MiniPhoneLocation$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniPhoneLocation$1;-><init>()V

    .line 95
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniPhoneLocation$1;->start()V

    goto :goto_0
.end method
