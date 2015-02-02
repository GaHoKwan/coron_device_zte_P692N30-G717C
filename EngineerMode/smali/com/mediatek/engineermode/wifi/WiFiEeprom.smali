.class public Lcom/mediatek/engineermode/wifi/WiFiEeprom;
.super Lcom/mediatek/engineermode/wifi/WiFiTestActivity;
.source "WiFiEeprom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEFAULT_EEPROM_SIZE:I = 0x200

.field private static final RADIX_16:I = 0x10

.field private static final TAG:Ljava/lang/String; = "EM/WiFi_EEPROM"


# instance fields
.field private mBtnStringRead:Landroid/widget/Button;

.field private mBtnStringWrite:Landroid/widget/Button;

.field private mBtnWordRead:Landroid/widget/Button;

.field private mBtnWordWrite:Landroid/widget/Button;

.field private mEtShowWindow:Landroid/widget/EditText;

.field private mEtStringAddr:Landroid/widget/EditText;

.field private mEtStringLength:Landroid/widget/EditText;

.field private mEtStringValue:Landroid/widget/EditText;

.field private mEtWordAddr:Landroid/widget/EditText;

.field private mEtWorkValue:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtWordAddr:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtWorkValue:Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnWordRead:Landroid/widget/Button;

    .line 58
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnWordWrite:Landroid/widget/Button;

    .line 59
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringAddr:Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringLength:Landroid/widget/EditText;

    .line 61
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringValue:Landroid/widget/EditText;

    .line 62
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnStringRead:Landroid/widget/Button;

    .line 63
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnStringWrite:Landroid/widget/Button;

    .line 64
    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtShowWindow:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17
    .parameter "arg0"

    .prologue
    .line 99
    sget-boolean v14, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v14, :cond_1

    .line 100
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->showDialog(I)V

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-wide/16 v7, 0x0

    .line 104
    .local v7, u4Addr:J
    const-wide/16 v12, 0x0

    .line 105
    .local v12, u4Value:J
    const-wide/16 v9, 0x0

    .line 108
    .local v9, u4Length:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnWordRead:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    if-ne v14, v15, :cond_2

    .line 109
    const/4 v14, 0x1

    new-array v11, v14, [J

    .line 111
    .local v11, u4Val:[J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtWordAddr:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 118
    invoke-static {v7, v8, v11}, Lcom/mediatek/engineermode/wifi/EMWifi;->readEEPRom16(J[J)I

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtWorkValue:Landroid/widget/EditText;

    const/4 v15, 0x0

    aget-wide v15, v11, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v14, "invalid input value"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 120
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v11           #u4Val:[J
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnWordWrite:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    if-ne v14, v15, :cond_3

    .line 122
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtWordAddr:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 124
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtWorkValue:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v12

    .line 131
    invoke-static {v7, v8, v12, v13}, Lcom/mediatek/engineermode/wifi/EMWifi;->writeEEPRom16(JJ)I

    .line 132
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->setEEPromCKSUpdated()I

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v2

    .line 127
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v14, "invalid input value"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 133
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnStringRead:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    if-ne v14, v15, :cond_4

    .line 134
    const/16 v14, 0x200

    new-array v1, v14, [B

    .line 136
    .local v1, acSzTmp:[B
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringAddr:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringLength:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v9

    .line 144
    const-wide/16 v14, 0x0

    cmp-long v14, v9, v14

    if-eqz v14, :cond_0

    .line 147
    invoke-static {v7, v8, v9, v10, v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->eepromReadByteStr(JJ[B)I

    .line 148
    new-instance v6, Ljava/lang/String;

    const/4 v14, 0x0

    long-to-int v15, v9

    mul-int/lit8 v15, v15, 0x2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v1, v14, v15, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 149
    .local v6, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringValue:Landroid/widget/EditText;

    invoke-virtual {v14, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 139
    .end local v6           #text:Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 140
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v14, "invalid input value"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 150
    .end local v1           #acSzTmp:[B
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnStringWrite:Landroid/widget/Button;

    invoke-virtual {v15}, Landroid/view/View;->getId()I

    move-result v15

    if-ne v14, v15, :cond_8

    .line 152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringAddr:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 153
    .local v3, inputVal:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 154
    const-string v14, "invalid input value"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 159
    :cond_5
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x10

    invoke-static {v14, v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v7

    .line 166
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringValue:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, szTmp:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 169
    .local v4, len:I
    if-eqz v4, :cond_6

    rem-int/lit8 v14, v4, 0x2

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    .line 170
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtShowWindow:Landroid/widget/EditText;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Byte string length error:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "bytes\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 161
    .end local v4           #len:I
    .end local v5           #szTmp:Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 162
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    const-string v14, "invalid input value"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 174
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #len:I
    .restart local v5       #szTmp:Ljava/lang/String;
    :cond_7
    div-int/lit8 v14, v4, 0x2

    int-to-long v14, v14

    invoke-static {v7, v8, v14, v15, v5}, Lcom/mediatek/engineermode/wifi/EMWifi;->eepromWriteByteStr(JJLjava/lang/String;)I

    .line 175
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->setEEPromCKSUpdated()I

    goto/16 :goto_0

    .line 177
    .end local v3           #inputVal:Ljava/lang/CharSequence;
    .end local v4           #len:I
    .end local v5           #szTmp:Ljava/lang/String;
    :cond_8
    const-string v14, "EM/WiFi_EEPROM"

    const-string v15, "unknown button"

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f03009d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 73
    const v0, 0x7f0b04a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtWordAddr:Landroid/widget/EditText;

    .line 74
    const v0, 0x7f0b04a6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtWorkValue:Landroid/widget/EditText;

    .line 75
    const v0, 0x7f0b04a7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnWordRead:Landroid/widget/Button;

    .line 76
    const v0, 0x7f0b04a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnWordWrite:Landroid/widget/Button;

    .line 77
    const v0, 0x7f0b04ab

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringAddr:Landroid/widget/EditText;

    .line 78
    const v0, 0x7f0b04ad

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringLength:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f0b04af

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtStringValue:Landroid/widget/EditText;

    .line 80
    const v0, 0x7f0b04b0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnStringRead:Landroid/widget/Button;

    .line 81
    const v0, 0x7f0b04b1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnStringWrite:Landroid/widget/Button;

    .line 82
    const v0, 0x7f0b04b2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mEtShowWindow:Landroid/widget/EditText;

    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnWordRead:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnWordWrite:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnStringRead:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiEeprom;->mBtnStringWrite:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 92
    const-wide/16 v0, 0x200

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->setEEPRomSize(J)I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "EM/WiFi_EEPROM"

    const-string v1, "initial setEEPRomSize to 512 failed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    return-void
.end method
