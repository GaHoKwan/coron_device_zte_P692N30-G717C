.class public Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgrProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;,
        Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
    }
.end annotation


# static fields
.field private static final ADN_INDEX_COLUMN_NAME:Ljava/lang/String; = "index"

.field private static final ADN_NAME_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final ADN_PHONE_NUMBER_COLUMN_NAME:Ljava/lang/String; = "number"

.field private static final MMI_IMEI_DISPLAY:Ljava/lang/String; = "*#06#"

.field private static final TAG:Ljava/lang/String; = "SpecialCharSequenceMgrProxy"

.field private static sCookie:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

.field private static sStateReadySlotList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sCookie:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method static synthetic access$100()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public static calcMEIDEndNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "MEID"

    .prologue
    const/4 v8, 0x0

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xe

    if-ne v6, v7, :cond_6

    .line 233
    const/4 v6, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v6, "a"

    aput-object v6, v2, v8

    const/4 v6, 0x1

    const-string v7, "b"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "c"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "d"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "e"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "f"

    aput-object v7, v2, v6

    .line 234
    .local v2, myStr:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 235
    .local v5, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_3

    .line 236
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, param:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 238
    aget-object v6, v2, v1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_1
    rem-int/lit8 v6, v0, 0x2

    if-nez v6, :cond_2

    .line 243
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    .line 235
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    rem-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    .line 246
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    goto :goto_2

    .line 249
    .end local v1           #j:I
    .end local v3           #param:Ljava/lang/String;
    :cond_3
    rem-int/lit8 v6, v5, 0x10

    if-nez v6, :cond_4

    .line 250
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 276
    .end local v0           #i:I
    .end local v2           #myStr:[Ljava/lang/String;
    .end local v5           #sum:I
    :goto_3
    return-object v6

    .line 252
    .restart local v0       #i:I
    .restart local v2       #myStr:[Ljava/lang/String;
    .restart local v5       #sum:I
    :cond_4
    rem-int/lit8 v6, v5, 0x10

    rsub-int/lit8 v4, v6, 0x10

    .line 253
    .local v4, result:I
    const/16 v6, 0x9

    if-le v4, v6, :cond_5

    .line 254
    add-int/lit8 v4, v4, 0x37

    .line 256
    packed-switch v4, :pswitch_data_0

    .line 269
    const-string v6, "X"

    goto :goto_3

    .line 258
    :pswitch_0
    const-string v6, "A"

    goto :goto_3

    .line 260
    :pswitch_1
    const-string v6, "B"

    goto :goto_3

    .line 262
    :pswitch_2
    const-string v6, "C"

    goto :goto_3

    .line 264
    :pswitch_3
    const-string v6, "D"

    goto :goto_3

    .line 266
    :pswitch_4
    const-string v6, "E"

    goto :goto_3

    .line 268
    :pswitch_5
    const-string v6, "F"

    goto :goto_3

    .line 272
    :cond_5
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 276
    .end local v0           #i:I
    .end local v2           #myStr:[Ljava/lang/String;
    .end local v4           #result:I
    .end local v5           #sum:I
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 256
    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static dismissDialog()V
    .locals 2

    .prologue
    .line 678
    const-string v0, "SpecialCharSequenceMgrProxy"

    const-string v1, "dismissProgressDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-object v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sCookie:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sCookie:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    iget-object v0, v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sCookie:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    iget-object v0, v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    sget-object v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sCookie:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    iget-object v0, v0, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 683
    :cond_0
    return-void
.end method

.method static fdnRequest(I)Z
    .locals 1
    .parameter "slot"

    .prologue
    .line 670
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isFdnEnabed(I)Z

    move-result v0

    return v0
.end method

.method public static getpsn(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 210
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 211
    .local v2, tm:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDeviceIdGemini(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, psn1:Ljava/lang/String;
    const-string v3, "SpecialCharSequenceMgrProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz v1, :cond_1

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    .line 216
    invoke-static {v1}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->calcMEIDEndNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, meidToMEIDChecksum:Ljava/lang/String;
    const-string v3, "SpecialCharSequenceMgrProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "meidToMEIDChecksum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .end local v0           #meidToMEIDChecksum:Ljava/lang/String;
    :goto_0
    const-string v3, "SpecialCharSequenceMgrProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MEID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v1

    .line 220
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 223
    :cond_1
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method static handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 20
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleAdnEntry, input = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 325
    const-string v5, "keyguard"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/KeyguardManager;

    .line 327
    .local v16, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual/range {v16 .. v16}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    const-string v5, "SpecialCharSequenceMgrProxy"

    const-string v6, "[handleAdnEntry]keyguard restricted input mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const/4 v5, 0x0

    .line 457
    .end local v16           #keyguardManager:Landroid/app/KeyguardManager;
    :goto_0
    return v5

    .line 332
    .restart local v16       #keyguardManager:Landroid/app/KeyguardManager;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    .line 333
    .local v17, len:I
    const/4 v5, 0x1

    move/from16 v0, v17

    if-le v0, v5, :cond_10

    const/4 v5, 0x5

    move/from16 v0, v17

    if-ge v0, v5, :cond_10

    const-string v5, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 336
    const/4 v13, -0x1

    .line 338
    .local v13, index:I
    const/4 v5, 0x0

    add-int/lit8 v6, v17, -0x1

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 339
    if-gtz v13, :cond_1

    .line 340
    const-string v5, "SpecialCharSequenceMgrProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleAdnEntry]index <= 0 for input"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    const/4 v5, 0x0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v11

    .line 344
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "SpecialCharSequenceMgrProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleAdnEntry]parse int failed for input: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v5, 0x0

    goto :goto_0

    .line 357
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 361
    .local v1, handler:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;
    new-instance v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    const/4 v5, 0x0

    invoke-direct {v3, v13, v1, v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;-><init>(ILcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;I)V

    .line 362
    .local v3, sc:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
    sput-object v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sCookie:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;

    .line 364
    iput v13, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->contactNum:I

    .line 365
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->setTextField(Landroid/widget/EditText;)V

    .line 366
    if-eqz p2, :cond_4

    .line 367
    invoke-virtual/range {p2 .. p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->text:Ljava/lang/String;

    .line 371
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 374
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v5, :cond_2

    .line 375
    new-instance v5, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    .line 377
    :cond_2
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f0c018d

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setTitle(I)V

    .line 378
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f0c018c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 383
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 384
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 385
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 386
    move-object/from16 v0, p0

    iput-object v0, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->context:Landroid/content/Context;

    .line 388
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_call_sim_setting"

    const-wide/16 v7, -0x3

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    .line 391
    .local v9, defaultSim:J
    const-string v5, "SpecialCharSequenceMgrProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleAdnEntry]defaultSim is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-wide/16 v5, -0x2

    cmp-long v5, v9, v5

    if-eqz v5, :cond_3

    const-wide/16 v5, -0x5

    cmp-long v5, v9, v5

    if-nez v5, :cond_5

    .line 395
    :cond_3
    const-string v5, "SpecialCharSequenceMgrProxy"

    const-string v6, "[handleAdnEntry]defaultSim is internet or not set default sim"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 369
    .end local v9           #defaultSim:J
    :cond_4
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->text:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 449
    .end local v1           #handler:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;
    .end local v3           #sc:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
    :catch_1
    move-exception v11

    .line 450
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v5, "SpecialCharSequenceMgrProxy"

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v11           #e:Ljava/lang/Exception;
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 399
    .restart local v1       #handler:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;
    .restart local v3       #sc:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
    .restart local v9       #defaultSim:J
    :cond_5
    :try_start_2
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v18

    .line 401
    .local v18, simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v2

    .line 402
    .local v2, slot:I
    const-wide/16 v5, -0x1

    cmp-long v5, v9, v5

    if-nez v5, :cond_e

    .line 403
    new-instance v15, Landroid/util/SparseBooleanArray;

    invoke-direct {v15}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 404
    .local v15, isRadioOn:Landroid/util/SparseBooleanArray;
    sget-object v5, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 405
    const/4 v14, 0x0

    .line 406
    .local v14, isAnyRadioOn:Z
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 407
    .local v19, slotId:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move/from16 v0, v19

    invoke-static {v5, v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSetRadioOn(Landroid/content/ContentResolver;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 408
    const/4 v14, 0x1

    .line 410
    :cond_7
    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateReady(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 411
    sget-object v5, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 415
    .end local v19           #slotId:I
    :cond_8
    if-nez v14, :cond_9

    .line 416
    const-string v5, "radio power off, bail out"

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 417
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 421
    :cond_9
    sget-object v5, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 422
    const-string v5, "sim not ready, bail out"

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 423
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 426
    :cond_a
    sget-object v5, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    const/4 v5, 0x1

    :goto_4
    iput-boolean v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mIsSingleQuery:Z

    .line 427
    sget-object v5, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->sStateReadySlotList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start query slot is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isSingleQuery = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mIsSingleQuery:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 441
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #isAnyRadioOn:Z
    .end local v15           #isRadioOn:Landroid/util/SparseBooleanArray;
    :cond_b
    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 442
    .local v4, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V

    .line 443
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v5, :cond_c

    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_c

    .line 444
    const-string v5, "SpecialCharSequenceMgrProxy"

    const-string v6, "handleAdnEntry() sc.progressDialog.show()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 447
    :cond_c
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "number"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "index"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 426
    .end local v4           #uri:Landroid/net/Uri;
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #isAnyRadioOn:Z
    .restart local v15       #isRadioOn:Landroid/util/SparseBooleanArray;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 431
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #isAnyRadioOn:Z
    .end local v15           #isRadioOn:Landroid/util/SparseBooleanArray;
    :cond_e
    long-to-int v5, v9

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v2

    .line 432
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;->mIsSingleQuery:Z

    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSetRadioOn(Landroid/content/ContentResolver;I)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimStateReady(I)Z

    move-result v5

    if-nez v5, :cond_b

    .line 436
    :cond_f
    const-string v5, "radio power off or sim not ready, bail out"

    invoke-static {v5}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 437
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 454
    .end local v1           #handler:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$QueryHandler;
    .end local v2           #slot:I
    .end local v3           #sc:Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$SimContactQueryCookie;
    .end local v9           #defaultSim:J
    .end local v13           #index:I
    .end local v18           #simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    :cond_10
    const-string v5, "SpecialCharSequenceMgrProxy"

    const-string v6, "[handleAdnEntry] not handled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 457
    .end local v16           #keyguardManager:Landroid/app/KeyguardManager;
    .end local v17           #len:I
    :cond_11
    invoke-static/range {p0 .. p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p0, p1, v1, v2}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    goto :goto_0
.end method

.method public static handleChars(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z
    .locals 2
    .parameter "context"
    .parameter "input"
    .parameter "textField"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p0, p1, v1, p2}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1, v1, p2}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v0

    goto :goto_0
.end method

.method static handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z
    .locals 4
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"
    .parameter "textField"

    .prologue
    .line 92
    const-string v1, "SpecialCharSequenceMgrProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleChars() dialString:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, dialString:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0, p3}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->handleAdnEntry(Landroid/content/Context;Ljava/lang/String;Landroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/contacts/ZteEngineerCode;->handleZteEngineerCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getDialPadExtension()Lcom/android/contacts/ext/DialPadExtension;

    move-result-object v1

    const-string v2, "ExtensionForOP09"

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/contacts/ext/DialPadExtension;->handleChars(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    const/4 v1, 0x1

    .line 107
    .end local v0           #dialString:Ljava/lang/String;
    :goto_0
    return v1

    .line 105
    .restart local v0       #dialString:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 107
    .end local v0           #dialString:Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleChars(Landroid/content/Context;Ljava/lang/String;ZLandroid/widget/EditText;)Z

    move-result v1

    goto :goto_0
.end method

.method static handleIMEIDisplay(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "input"
    .parameter "useSystemWindow"

    .prologue
    .line 123
    const-string v1, "*#06#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    const-string v1, "SpecialCharSequenceMgrProxy"

    const-string v2, "---djb---specialcharSequenceMgrProxy  handleIMEIDisplay   *#06#"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.zte.engineer"

    const-string v2, "com.zte.engineer.ImeiTest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    const/4 v1, 0x1

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "input"

    .prologue
    .line 143
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 144
    const-string v8, "**04"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "**05"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_0
    const-string v8, "#"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 145
    move-object v3, p1

    .line 146
    .local v3, innerInput:Ljava/lang/String;
    new-instance v4, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$1;

    invoke-direct {v4, v3}, Lcom/mediatek/contacts/SpecialCharSequenceMgrProxy$1;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, onClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/contacts/util/ContactsSettingsUtils;->getDefaultSIMForVoiceCall()J

    move-result-wide v0

    .line 159
    .local v0, defaultSim:J
    const-string v8, "SpecialCharSequenceMgrProxy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[handlePinEntry]default sim is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-wide/16 v8, -0x5

    cmp-long v8, v0, v8

    if-eqz v8, :cond_1

    const-wide/16 v8, -0x2

    cmp-long v8, v0, v8

    if-nez v8, :cond_2

    .line 163
    :cond_1
    const-string v8, "SpecialCharSequenceMgrProxy"

    const-string v9, "[handlePinEntry] default sim not set or is internet sim"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v8, 0x0

    .line 204
    .end local v0           #defaultSim:J
    .end local v3           #innerInput:Ljava/lang/String;
    .end local v4           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return v8

    .line 167
    .restart local v0       #defaultSim:J
    .restart local v3       #innerInput:Ljava/lang/String;
    .restart local v4       #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    .line 168
    .local v6, simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-virtual {v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v5

    .line 170
    .local v5, simCount:I
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-nez v8, :cond_3

    const/4 v8, 0x1

    if-le v5, v8, :cond_3

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {p0, v8, v9, v4}, Lcom/mediatek/contacts/widget/SimPickerDialog;->create(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v2

    .line 176
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 177
    const/4 v8, 0x1

    goto :goto_0

    .line 180
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :cond_3
    const-wide/16 v8, -0x2

    cmp-long v8, v0, v8

    if-nez v8, :cond_4

    .line 181
    const-string v8, "SpecialCharSequenceMgrProxy"

    const-string v9, "defaultSim is internet"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v8, 0x0

    goto :goto_0

    .line 186
    :cond_4
    const-wide/16 v8, -0x1

    cmp-long v8, v0, v8

    if-nez v8, :cond_6

    .line 187
    invoke-virtual {v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 189
    invoke-virtual {v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimInfoList()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v8, v8, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v3, v8}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->handlePinMmi(Ljava/lang/String;I)Z

    move-result v8

    goto :goto_0

    .line 192
    :cond_5
    const-string v8, "SpecialCharSequenceMgrProxy"

    const-string v9, "[handlePinEntry]insert sim info list is null or empty"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v8, 0x0

    goto :goto_0

    .line 197
    :cond_6
    long-to-int v8, v0

    invoke-virtual {v6, v8}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v7

    .line 198
    .local v7, slot:I
    invoke-static {v3, v7}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->handlePinMmi(Ljava/lang/String;I)Z

    move-result v8

    goto :goto_0

    .line 201
    .end local v0           #defaultSim:J
    .end local v3           #innerInput:Ljava/lang/String;
    .end local v4           #onClickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v5           #simCount:I
    .end local v6           #simInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    .end local v7           #slot:I
    :cond_7
    const-string v8, "SpecialCharSequenceMgrProxy"

    const-string v9, "[handlePinEntry]not handled otherwise"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v8, 0x0

    goto :goto_0

    .line 204
    :cond_8
    invoke-static {p0, p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->handlePinEntry(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    goto :goto_0
.end method

.method static handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "input"

    .prologue
    .line 464
    invoke-static {p0, p1}, Lcom/android/contacts/SpecialCharSequenceMgr;->handleSecretCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 674
    const-string v0, "SpecialCharSequenceMgrProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method static showIMEIPanel(Landroid/content/Context;Z)V
    .locals 10
    .parameter "context"
    .parameter "useSystemWindow"

    .prologue
    const/4 v9, 0x0

    .line 282
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 283
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v4, imeis:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0027

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, imei_invalid:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 286
    .local v5, slotId:I
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, imei:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v2, v3

    .end local v2           #imei:Ljava/lang/String;
    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    .end local v5           #slotId:I
    :cond_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0c0184

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v7, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x104000a

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 312
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 320
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #imei_invalid:Ljava/lang/String;
    .end local v4           #imeis:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 316
    :cond_2
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 318
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {p0, p1, v6}, Lcom/android/contacts/SpecialCharSequenceMgr;->showIMEIPanel(Landroid/content/Context;ZLandroid/telephony/TelephonyManager;)V

    goto :goto_1
.end method
