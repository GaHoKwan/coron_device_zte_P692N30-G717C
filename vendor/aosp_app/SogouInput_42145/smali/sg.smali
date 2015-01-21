.class public Lsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field a:Ljava/lang/String;

.field a:Lqy;

.field a:Lsj;

.field a:Lsk;

.field a:Lsl;

.field a:Z

.field b:I

.field b:Ljava/lang/String;

.field b:Z

.field c:Ljava/lang/String;

.field c:Z


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-boolean v0, p0, Lsg;->c:Z

    .line 320
    iput p1, p0, Lsg;->a:I

    .line 321
    iput-object p2, p0, Lsg;->a:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lsg;->b:Ljava/lang/String;

    .line 323
    iput-object p4, p0, Lsg;->c:Ljava/lang/String;

    .line 324
    iput-object p5, p0, Lsg;->a:Lsl;

    .line 325
    iput-object p6, p0, Lsg;->a:Lsj;

    .line 326
    iput-object p7, p0, Lsg;->a:Lsk;

    .line 327
    iput v0, p0, Lsg;->b:I

    .line 328
    iput-boolean p8, p0, Lsg;->a:Z

    .line 329
    iput-boolean v0, p0, Lsg;->b:Z

    .line 330
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;ZLsh;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7
    invoke-direct/range {p0 .. p8}, Lsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsl;Lsj;Lsk;Z)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 252
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "Canceled"

    .line 261
    :goto_0
    return-object v0

    .line 254
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "Ready"

    goto :goto_0

    .line 256
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 257
    const-string v0, "Running"

    goto :goto_0

    .line 258
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 259
    const-string v0, "Finished"

    goto :goto_0

    .line 261
    :cond_3
    const-string v0, "Unknow_Status"

    goto :goto_0
.end method

.method public static a(Lsg;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 271
    iget v0, p0, Lsg;->b:I

    invoke-static {v0}, Lsg;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 275
    sparse-switch p0, :sswitch_data_0

    .line 315
    const-string v0, "unknow"

    :goto_0
    return-object v0

    .line 277
    :sswitch_0
    const-string v0, "dict_backup"

    goto :goto_0

    .line 279
    :sswitch_1
    const-string v0, "dict_restore"

    goto :goto_0

    .line 281
    :sswitch_2
    const-string v0, "dict_pc_merge"

    goto :goto_0

    .line 283
    :sswitch_3
    const-string v0, "dict_update"

    goto :goto_0

    .line 285
    :sswitch_4
    const-string v0, "softeare_update"

    goto :goto_0

    .line 287
    :sswitch_5
    const-string v0, "software_statistics"

    goto :goto_0

    .line 289
    :sswitch_6
    const-string v0, "theme_download"

    goto :goto_0

    .line 291
    :sswitch_7
    const-string v0, "secl_download"

    goto :goto_0

    .line 293
    :sswitch_8
    const-string v0, "login"

    goto :goto_0

    .line 295
    :sswitch_9
    const-string v0, "resigter"

    goto :goto_0

    .line 297
    :sswitch_a
    const-string v0, "EMULATOR_WORK"

    goto :goto_0

    .line 299
    :sswitch_b
    const-string v0, "feedback"

    goto :goto_0

    .line 301
    :sswitch_c
    const-string v0, "dimcode_theme_download"

    goto :goto_0

    .line 303
    :sswitch_d
    const-string v0, "multimedia_upload"

    goto :goto_0

    .line 305
    :sswitch_e
    const-string v0, "multimedia_download"

    goto :goto_0

    .line 307
    :sswitch_f
    const-string v0, "cloudinput"

    goto :goto_0

    .line 309
    :sswitch_10
    const-string v0, "cloudinput_ping"

    goto :goto_0

    .line 311
    :sswitch_11
    const-string v0, "collecter_map_data"

    goto :goto_0

    .line 313
    :sswitch_12
    const-string v0, "bigram_download"

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_b
        0xe -> :sswitch_c
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x97 -> :sswitch_d
        0xb0 -> :sswitch_e
        0xc8 -> :sswitch_a
        0xc9 -> :sswitch_f
        0xca -> :sswitch_10
    .end sparse-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Lsg;->a:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lsg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()Lsl;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lsg;->a:Lsl;

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsg;->b:Z

    .line 231
    iget-object v0, p0, Lsg;->a:Lqy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsg;->c:Z

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lsg;->a:Lqy;

    invoke-virtual {v0, p0}, Lqy;->c(Lsg;)V

    .line 234
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iget v0, p0, Lsg;->b:I

    or-int/2addr v0, p1

    iput v0, p0, Lsg;->b:I

    .line 209
    return-void
.end method

.method public a(Lalv;)V
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lsg;->a:Lsl;

    invoke-interface {v0, p1}, Lsl;->a(Lalv;)V

    .line 242
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-boolean p1, p0, Lsg;->c:Z

    .line 213
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lsg;->b:Z

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lsg;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lsg;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 216
    iget-boolean v0, p0, Lsg;->b:Z

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iput-boolean p1, p0, Lsg;->b:Z

    .line 218
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lsg;->a:Lqy;

    if-eqz v0, :cond_0

    .line 219
    iget-boolean v0, p0, Lsg;->c:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lsg;->a:Lqy;

    invoke-virtual {v0, p0}, Lqy;->b(Lsg;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsg;->a:I

    invoke-static {v1}, Lsg;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Canceled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsg;->b:I

    invoke-static {v1}, Lsg;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Label = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Url = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
