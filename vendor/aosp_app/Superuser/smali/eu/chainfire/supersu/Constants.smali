.class public Leu/chainfire/supersu/Constants;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SdCardPath"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/Constants$OnExpireTimeSelected;
    }
.end annotation


# static fields
.field public static final Ą:Z

.field public static final ą:Ljava/lang/String;

.field public static final Ć:[I

.field public static final ȃ:Ljava/lang/String;

.field public static final ˮ͈:Z

.field public static final 櫯:Z

.field public static final 鷭:Z


# direct methods
.method static <clinit>()V
    .locals 7

    .line 0
    const/16 v0, 0x19

    new-array v0, v0, [I

    .line 109
    const/16 v1, 0x3e8

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 110
    const/16 v1, 0x3e9

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 111
    const/16 v1, 0x3ea

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 112
    const/16 v1, 0x3eb

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 113
    const/16 v1, 0x3ec

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 114
    const/16 v1, 0x3ed

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 115
    const/16 v1, 0x3ee

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 116
    const/16 v1, 0x3ef

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 117
    const/16 v1, 0x3f0

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 118
    const/16 v1, 0x3f1

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 119
    const/16 v1, 0x3f2

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 120
    const/16 v1, 0x3f3

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 121
    const/16 v1, 0x3f4

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 122
    const/16 v1, 0x3f5

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 123
    const/16 v1, 0x3f6

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 124
    const/16 v1, 0x7d0

    const/16 v2, 0x10

    aput v1, v0, v2

    .line 125
    const/16 v1, 0x7d1

    const/16 v2, 0x11

    aput v1, v0, v2

    .line 126
    const/16 v1, 0x7d2

    const/16 v2, 0x12

    aput v1, v0, v2

    .line 127
    const/16 v1, 0xbb9

    const/16 v2, 0x13

    aput v1, v0, v2

    .line 128
    const/16 v1, 0xbba

    const/16 v2, 0x14

    aput v1, v0, v2

    .line 129
    const/16 v1, 0xbbb

    const/16 v2, 0x15

    aput v1, v0, v2

    .line 130
    const/16 v1, 0xbbc

    const/16 v2, 0x16

    aput v1, v0, v2

    .line 131
    const/16 v1, 0x270e

    const/16 v2, 0x17

    aput v1, v0, v2

    .line 132
    const/16 v1, 0x270f

    const/16 v2, 0x18

    aput v1, v0, v2

    .line 107
    sput-object v0, Leu/chainfire/supersu/Constants;->Ć:[I

    .line 138
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/selinux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Leu/chainfire/supersu/Constants;->櫯:Z

    .line 140
    const/4 v3, 0x0

    .line 141
    new-instance v4, Ljava/io/File;

    const-string v0, "/sys/fs/selinux/enforce"

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 145
    move-object v4, v0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    .line 146
    const/4 v3, 0x1

    .line 147
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    :cond_1
    :goto_0
    sput-boolean v3, Leu/chainfire/supersu/Constants;->ˮ͈:Z

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    .line 159
    sget-boolean v0, Leu/chainfire/supersu/Constants;->櫯:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Leu/chainfire/supersu/Constants;->ˮ͈:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 157
    .line 161
    :goto_1
    sput-boolean v0, Leu/chainfire/supersu/Constants;->鷭:Z

    if-eqz v0, :cond_4

    const-string v0, "0755"

    goto :goto_2

    :cond_4
    const-string v0, "06755"

    :goto_2
    sput-object v0, Leu/chainfire/supersu/Constants;->ȃ:Ljava/lang/String;

    .line 166
    const/4 v3, 0x0

    .line 167
    new-instance v4, Ljava/io/File;

    const-string v0, "/proc/mounts"

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v0

    .line 171
    const/16 v0, 0x4000

    new-array v5, v0, [B

    .line 172
    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 174
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v5, v2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 175
    const-string v1, "/system/xbin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move v3, v0

    .line 177
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 178
    goto :goto_3

    .line 179
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 180
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    .line 188
    :cond_5
    :goto_3
    sput-boolean v3, Leu/chainfire/supersu/Constants;->Ą:Z

    if-eqz v3, :cond_6

    const-string v0, "/system/xbin/.pin"

    goto :goto_4

    :cond_6
    const-string v0, "/system/.pin"

    :goto_4
    sput-object v0, Leu/chainfire/supersu/Constants;->ą:Ljava/lang/String;

    .line 190
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 191
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 192
    invoke-static {}, Leu/chainfire/supersu/SuperUser;->鷭()V

    .line 193
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ą(I)J
    .locals 6

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    .line 321
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 323
    :pswitch_0
    const-wide/16 v0, 0x3c

    add-long/2addr v0, v4

    return-wide v0

    .line 325
    :pswitch_1
    const-wide/16 v0, 0x12c

    add-long/2addr v0, v4

    return-wide v0

    .line 327
    :pswitch_2
    const-wide/16 v0, 0x384

    add-long/2addr v0, v4

    return-wide v0

    .line 329
    :pswitch_3
    const-wide/16 v0, 0x708

    add-long/2addr v0, v4

    return-wide v0

    .line 331
    :pswitch_4
    const-wide/16 v0, 0xe10

    add-long/2addr v0, v4

    return-wide v0

    .line 333
    :pswitch_5
    const-wide/16 v0, 0x2a30

    add-long/2addr v0, v4

    return-wide v0

    .line 335
    :pswitch_6
    const-wide/16 v0, 0x5460

    add-long/2addr v0, v4

    return-wide v0

    .line 337
    :pswitch_7
    const-wide/32 v0, 0xa8c0

    add-long/2addr v0, v4

    return-wide v0

    .line 339
    :pswitch_8
    const-wide/32 v0, 0x15180

    add-long/2addr v0, v4

    return-wide v0

    .line 342
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static ȃ(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 274
    const-string v0, "parent"

    return-object v0

    .line 275
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 276
    const-string v0, "content"

    return-object v0

    .line 277
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 278
    const-string v0, "access"

    return-object v0

    .line 280
    :cond_2
    const-string v0, "none"

    return-object v0
.end method

.method public static ˮ͈(Ljava/lang/String;)I
    .locals 1

    .line 0
    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, -0x1

    return v0

    .line 287
    :cond_0
    const-string v0, "content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const/4 v0, 0x2

    return v0

    .line 289
    :cond_1
    const-string v0, "access"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    const/4 v0, 0x1

    return v0

    .line 292
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static ˮ͈(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 254
    const-string v0, "parent"

    return-object v0

    .line 255
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 256
    const-string v0, "yes"

    return-object v0

    .line 258
    :cond_1
    const-string v0, "no"

    return-object v0
.end method

.method public static ˮ͈(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 0
    invoke-static {}, Leu/chainfire/supersu/User;->鷭()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/data/data/eu.chainfire.supersu/logs/"

    return-object v0

    .line 372
    :cond_0
    const-string v0, "/data/user/%d/eu.chainfire.supersu/logs/"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Leu/chainfire/supersu/User;->鷭(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static 櫯(Ljava/lang/String;)I
    .locals 1

    .line 0
    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, -0x1

    return v0

    .line 265
    :cond_0
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    const/4 v0, 0x1

    return v0

    .line 268
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static 櫯(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 308
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/Application;

    invoke-virtual {v1}, Leu/chainfire/supersu/Application;->鷭()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 310
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static 櫯(I)Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 230
    const-string v0, "parent"

    return-object v0

    .line 231
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 232
    const-string v0, "prompt"

    return-object v0

    .line 233
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 234
    const-string v0, "grant"

    return-object v0

    .line 236
    :cond_2
    const-string v0, "deny"

    return-object v0
.end method

.method public static 鷭(Ljava/lang/String;)I
    .locals 1

    .line 0
    const-string v0, "parent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, -0x1

    return v0

    .line 243
    :cond_0
    const-string v0, "prompt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const/4 v0, 0x2

    return v0

    .line 245
    :cond_1
    const-string v0, "grant"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    const/4 v0, 0x1

    return v0

    .line 248
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static 鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 299
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Leu/chainfire/supersu/Application;

    invoke-virtual {v1}, Leu/chainfire/supersu/Application;->鷭()I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static 鷭(I)Ljava/lang/String;
    .locals 1

    .line 0
    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_3
        0x3eb -> :sswitch_4
        0x3ec -> :sswitch_5
        0x3ed -> :sswitch_6
        0x3ee -> :sswitch_7
        0x3ef -> :sswitch_8
        0x3f0 -> :sswitch_9
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x3f3 -> :sswitch_c
        0x3f4 -> :sswitch_d
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_f
        0x7d0 -> :sswitch_10
        0x7d1 -> :sswitch_11
        0x7d2 -> :sswitch_12
        0xbb9 -> :sswitch_13
        0xbba -> :sswitch_14
        0xbbb -> :sswitch_15
        0xbbc -> :sswitch_16
        0x270e -> :sswitch_17
        0x270f -> :sswitch_18
    .end sparse-switch

    .line 197
    :sswitch_0
    const-string v0, "ROOT"

    return-object v0

    .line 198
    :sswitch_1
    const-string v0, "SYSTEM"

    return-object v0

    .line 199
    :sswitch_2
    const-string v0, "RADIO"

    return-object v0

    .line 200
    :sswitch_3
    const-string v0, "BLUETOOTH"

    return-object v0

    .line 201
    :sswitch_4
    const-string v0, "GRAPHICS"

    return-object v0

    .line 202
    :sswitch_5
    const-string v0, "INPUT"

    return-object v0

    .line 203
    :sswitch_6
    const-string v0, "AUDIO"

    return-object v0

    .line 204
    :sswitch_7
    const-string v0, "CAMERA"

    return-object v0

    .line 205
    :sswitch_8
    const-string v0, "LOG"

    return-object v0

    .line 206
    :sswitch_9
    const-string v0, "COMPASS"

    return-object v0

    .line 207
    :sswitch_a
    const-string v0, "MOUNT"

    return-object v0

    .line 208
    :sswitch_b
    const-string v0, "WIFI"

    return-object v0

    .line 209
    :sswitch_c
    const-string v0, "ADB"

    return-object v0

    .line 210
    :sswitch_d
    const-string v0, "INSTALL"

    return-object v0

    .line 211
    :sswitch_e
    const-string v0, "MEDIA"

    return-object v0

    .line 212
    :sswitch_f
    const-string v0, "DHCP"

    return-object v0

    .line 213
    :sswitch_10
    const-string v0, "SHELL"

    return-object v0

    .line 214
    :sswitch_11
    const-string v0, "CACHE"

    return-object v0

    .line 215
    :sswitch_12
    const-string v0, "DIAG"

    return-object v0

    .line 216
    :sswitch_13
    const-string v0, "NET_BT_ADMIN"

    return-object v0

    .line 217
    :sswitch_14
    const-string v0, "NET_BT"

    return-object v0

    .line 218
    :sswitch_15
    const-string v0, "INET"

    return-object v0

    .line 219
    :sswitch_16
    const-string v0, "NET_RAW"

    return-object v0

    .line 220
    :sswitch_17
    const-string v0, "MISC"

    return-object v0

    .line 221
    :sswitch_18
    const-string v0, "NOBODY"

    return-object v0

    .line 225
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static 鷭(Landroid/app/Activity;Ljava/lang/String;Leu/chainfire/supersu/Constants$OnExpireTimeSelected;Ljava/lang/Runnable;)V
    .locals 3

    .line 0
    invoke-static {p0}, Leu/chainfire/supersu/Constants;->鷭(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 350
    new-instance v1, Leu/chainfire/supersu/Constants$1;

    invoke-direct {v1, p2}, Leu/chainfire/supersu/Constants$1;-><init>(Leu/chainfire/supersu/Constants$OnExpireTimeSelected;)V

    const v2, 0x7f0b0007

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 358
    new-instance v1, Leu/chainfire/supersu/Constants$2;

    invoke-direct {v1, p3}, Leu/chainfire/supersu/Constants$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 367
    return-void
.end method
