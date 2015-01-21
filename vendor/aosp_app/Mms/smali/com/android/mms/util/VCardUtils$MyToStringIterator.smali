.class public Lcom/android/mms/util/VCardUtils$MyToStringIterator;
.super Ljava/lang/Object;
.source "VCardUtils.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyToStringIterator"
.end annotation


# static fields
.field private static final STR_COLON:Ljava/lang/String; = ": "

.field private static final STR_NEWLINE:Ljava/lang/String; = "\n"

.field private static final STR_SPLIT:Ljava/lang/String; = ", "


# instance fields
.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 19
    .parameter "elem"

    .prologue
    .line 333
    invoke-interface/range {p1 .. p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 334
    const-string v16, "Mms/VCardUtils"

    const-string v17, "MyToStringIterator.onElement(): elem is empty."

    invoke-static/range {v16 .. v17}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/16 v16, 0x0

    .line 435
    :goto_0
    return v16

    .line 338
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$NameData;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v7, p1

    .line 339
    check-cast v7, Lcom/android/vcard/VCardEntry$NameData;

    .line 340
    .local v7, nameData:Lcom/android/vcard/VCardEntry$NameData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/android/vcard/VCardEntry$NameData;->displayName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .end local v7           #nameData:Lcom/android/vcard/VCardEntry$NameData;
    :cond_1
    :goto_1
    const/16 v16, 0x1

    goto :goto_0

    .line 341
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$PhoneData;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v11, p1

    .line 342
    check-cast v11, Lcom/android/vcard/VCardEntry$PhoneData;

    .line 343
    .local v11, phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhoneData;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v13

    .line 344
    .local v13, resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntry$PhoneData;->getNumber()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 346
    .end local v11           #phoneData:Lcom/android/vcard/VCardEntry$PhoneData;
    .end local v13           #resId:I
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$EmailData;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v4, p1

    .line 347
    check-cast v4, Lcom/android/vcard/VCardEntry$EmailData;

    .line 348
    .local v4, emailData:Lcom/android/vcard/VCardEntry$EmailData;
    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$EmailData;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v13

    .line 349
    .restart local v13       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v4}, Lcom/android/vcard/VCardEntry$EmailData;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 351
    .end local v4           #emailData:Lcom/android/vcard/VCardEntry$EmailData;
    .end local v13           #resId:I
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$ImData;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v5, p1

    .line 352
    check-cast v5, Lcom/android/vcard/VCardEntry$ImData;

    .line 353
    .local v5, imData:Lcom/android/vcard/VCardEntry$ImData;
    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$ImData;->getProtocol()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v13

    .line 354
    .restart local v13       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntry$ImData;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 356
    .end local v5           #imData:Lcom/android/vcard/VCardEntry$ImData;
    .end local v13           #resId:I
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$NicknameData;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v8, p1

    .line 357
    check-cast v8, Lcom/android/vcard/VCardEntry$NicknameData;

    .line 358
    .local v8, nicknameData:Lcom/android/vcard/VCardEntry$NicknameData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0b01fe

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Lcom/android/vcard/VCardEntry$NicknameData;->getNickname()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 360
    .end local v8           #nicknameData:Lcom/android/vcard/VCardEntry$NicknameData;
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$WebsiteData;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v15, p1

    .line 361
    check-cast v15, Lcom/android/vcard/VCardEntry$WebsiteData;

    .line 362
    .local v15, websiteData:Lcom/android/vcard/VCardEntry$WebsiteData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v15}, Lcom/android/vcard/VCardEntry$WebsiteData;->getWebsite()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 363
    .end local v15           #websiteData:Lcom/android/vcard/VCardEntry$WebsiteData;
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$BirthdayData;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v3, p1

    .line 364
    check-cast v3, Lcom/android/vcard/VCardEntry$BirthdayData;

    .line 365
    .local v3, birthdayData:Lcom/android/vcard/VCardEntry$BirthdayData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10402ac

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntry$BirthdayData;->getBirthday()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 368
    .end local v3           #birthdayData:Lcom/android/vcard/VCardEntry$BirthdayData;
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$AnniversaryData;

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v2, p1

    .line 369
    check-cast v2, Lcom/android/vcard/VCardEntry$AnniversaryData;

    .line 370
    .local v2, anniversaryData:Lcom/android/vcard/VCardEntry$AnniversaryData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x10402ad

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Lcom/android/vcard/VCardEntry$AnniversaryData;->getAnniversary()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 373
    .end local v2           #anniversaryData:Lcom/android/vcard/VCardEntry$AnniversaryData;
    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$PostalData;

    move/from16 v16, v0

    if-eqz v16, :cond_f

    move-object/from16 v12, p1

    .line 374
    check-cast v12, Lcom/android/vcard/VCardEntry$PostalData;

    .line 375
    .local v12, postalData:Lcom/android/vcard/VCardEntry$PostalData;
    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->getTypeLabelResource(I)I

    move-result v13

    .line 376
    .restart local v13       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getStreet()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_a
    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getPobox()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_b

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getPobox()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_b
    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getExtendedAddress()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_c

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getExtendedAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_c
    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_d

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getLocalty()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_d
    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_e

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getRegion()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_e
    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v12}, Lcom/android/vcard/VCardEntry$PostalData;->getPostalCode()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 396
    .end local v12           #postalData:Lcom/android/vcard/VCardEntry$PostalData;
    .end local v13           #resId:I
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$NoteData;

    move/from16 v16, v0

    if-eqz v16, :cond_10

    move-object/from16 v9, p1

    .line 397
    check-cast v9, Lcom/android/vcard/VCardEntry$NoteData;

    .line 398
    .local v9, noteData:Lcom/android/vcard/VCardEntry$NoteData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v9}, Lcom/android/vcard/VCardEntry$NoteData;->getNote()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 399
    .end local v9           #noteData:Lcom/android/vcard/VCardEntry$NoteData;
    :cond_10
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$OrganizationData;

    move/from16 v16, v0

    if-eqz v16, :cond_16

    move-object/from16 v10, p1

    .line 400
    check-cast v10, Lcom/android/vcard/VCardEntry$OrganizationData;

    .line 401
    .local v10, organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$CommonDataKinds$Organization;->getTypeLabelResource(I)I

    move-result v13

    .line 402
    .restart local v13       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getTitle()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_11

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getTitle()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_11
    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getPhoneticName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_12

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getPhoneticName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_12
    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getDepartmentName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_13

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getDepartmentName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_13
    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getOrganizationName()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_14

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/android/vcard/VCardEntry$OrganizationData;->getOrganizationName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, ", "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 416
    .local v6, lastIndex:I
    if-lez v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v16

    const-string v17, ", "

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    if-ne v6, v0, :cond_15

    .line 417
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    .line 419
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 420
    .end local v6           #lastIndex:I
    .end local v10           #organizationData:Lcom/android/vcard/VCardEntry$OrganizationData;
    .end local v13           #resId:I
    :cond_16
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/vcard/VCardEntry$SipData;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object/from16 v14, p1

    .line 421
    check-cast v14, Lcom/android/vcard/VCardEntry$SipData;

    .line 422
    .local v14, sipData:Lcom/android/vcard/VCardEntry$SipData;
    invoke-virtual {v14}, Lcom/android/vcard/VCardEntry$SipData;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    .line 423
    invoke-virtual {v14}, Lcom/android/vcard/VCardEntry$SipData;->getType()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/provider/ContactsContract$CommonDataKinds$SipAddress;->getTypeLabelResource(I)I

    move-result v13

    .line 424
    .restart local v13       #resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/android/vcard/VCardEntry$SipData;->getAddress()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public onElementGroupEnded()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 3
    .parameter "label"

    .prologue
    const v2, 0x7f0b0200

    .line 287
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->PHONE:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 293
    :cond_2
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->EMAIL:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 296
    :cond_3
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->POSTAL_ADDRESS:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 299
    :cond_4
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ORGANIZATION:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_5

    .line 300
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 302
    :cond_5
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->IM:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_6

    .line 303
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 305
    :cond_6
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->WEBSITE:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_7

    .line 306
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 308
    :cond_7
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->SIP:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_8

    .line 309
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 311
    :cond_8
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NICKNAME:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_9

    .line 312
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 314
    :cond_9
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->NOTE:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_a

    .line 315
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 317
    :cond_a
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->BIRTHDAY:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_b

    .line 318
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 320
    :cond_b
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->ANNIVERSARY:Lcom/android/vcard/VCardEntry$EntryLabel;

    if-ne p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public onIterationEnded()V
    .locals 4

    .prologue
    .line 445
    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 446
    .local v0, lastIndex:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, "\n"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    .line 449
    :cond_0
    return-void
.end method

.method public onIterationStarted()V
    .locals 1

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    .line 283
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mContext:Landroid/content/Context;

    .line 278
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 454
    .local v0, lastIndex:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 457
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/VCardUtils$MyToStringIterator;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
