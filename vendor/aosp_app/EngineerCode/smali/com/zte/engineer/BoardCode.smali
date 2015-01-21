.class public Lcom/zte/engineer/BoardCode;
.super Landroid/app/Activity;
.source "BoardCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isLetterOrNumber(C)Z
    .locals 1
    .parameter "b"

    .prologue
    .line 57
    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    const/16 v0, 0x41

    if-ge p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x30

    if-lt p1, v0, :cond_1

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x7a

    if-gt p1, v0, :cond_3

    const/16 v0, 0x61

    if-lt p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/16 v13, 0x3e

    const/16 v12, 0x3d

    const/16 v11, 0xc

    const/16 v8, 0x30

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    .local v7, text:Landroid/widget/TextView;
    const/high16 v9, 0x41a0

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 39
    const-string v9, "phone"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 40
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 41
    .local v2, barcode:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSN()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x3f

    if-ge v9, v10, :cond_0

    move v0, v8

    .line 43
    .local v0, a:C
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v13, :cond_1

    move v1, v8

    .line 44
    .local v1, b:C
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v12, :cond_2

    move v5, v8

    .line 45
    .local v5, c:C
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v11, :cond_3

    move-object v4, v2

    .line 46
    .local v4, boardcode:Ljava/lang/String;
    :goto_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 47
    .local v3, boardCode:Ljava/lang/StringBuffer;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/zte/engineer/BoardCode;->isLetterOrNumber(C)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    :goto_4
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/zte/engineer/BoardCode;->isLetterOrNumber(C)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    :goto_5
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/zte/engineer/BoardCode;->isLetterOrNumber(C)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    :goto_6
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 53
    return-void

    .line 42
    .end local v0           #a:C
    .end local v1           #b:C
    .end local v3           #boardCode:Ljava/lang/StringBuffer;
    .end local v4           #boardcode:Ljava/lang/String;
    .end local v5           #c:C
    :cond_0
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_0

    .line 43
    .restart local v0       #a:C
    :cond_1
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto/16 :goto_1

    .line 44
    .restart local v1       #b:C
    :cond_2
    const/16 v8, 0x3c

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto/16 :goto_2

    .line 45
    .restart local v5       #c:C
    :cond_3
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .line 47
    .restart local v3       #boardCode:Ljava/lang/StringBuffer;
    .restart local v4       #boardcode:Ljava/lang/String;
    :cond_4
    const-string v8, "0"

    goto :goto_4

    .line 48
    :cond_5
    const-string v8, "0"

    goto :goto_5

    .line 49
    :cond_6
    const-string v8, "0"

    goto :goto_6
.end method
