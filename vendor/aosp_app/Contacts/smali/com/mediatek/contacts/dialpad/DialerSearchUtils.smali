.class public Lcom/mediatek/contacts/dialpad/DialerSearchUtils;
.super Ljava/lang/Object;
.source "DialerSearchUtils.java"


# static fields
.field private static final HYPHON_CHARACTERS:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DialerSearchUtils"

.field private static sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    .line 20
    sget-object v0, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v0, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v0, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v0, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustHighlitePositionForHyphen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "number"
    .parameter "numberMatchedOffsets"
    .parameter "originNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 85
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v6, res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 88
    .local v2, highliteBegin:I
    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 89
    .local v3, highliteEnd:I
    const/4 v5, 0x0

    .line 90
    .local v5, originNumberBegin:I
    const-string v7, ""

    .line 91
    .local v7, targetTemp:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 92
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 93
    .local v0, c:C
    sget-object v8, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 91
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 98
    .end local v0           #c:C
    :cond_1
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 100
    if-le v2, v3, :cond_2

    .line 142
    .end local v2           #highliteBegin:I
    .end local v3           #highliteEnd:I
    .end local v4           #i:I
    .end local v5           #originNumberBegin:I
    .end local v6           #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #targetTemp:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 104
    .restart local v2       #highliteBegin:I
    .restart local v3       #highliteEnd:I
    .restart local v4       #i:I
    .restart local v5       #originNumberBegin:I
    .restart local v6       #res:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7       #targetTemp:Ljava/lang/String;
    :cond_2
    if-lt v5, v3, :cond_3

    if-lt v3, v10, :cond_3

    .line 105
    const/4 v3, 0x0

    .line 108
    :cond_3
    if-le v3, v5, :cond_4

    .line 109
    sub-int/2addr v3, v5

    .line 112
    :cond_4
    if-lt v2, v5, :cond_5

    .line 113
    sub-int/2addr v2, v5

    .line 116
    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-gt v4, v2, :cond_7

    .line 117
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 118
    .restart local v0       #c:C
    sget-object v8, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 119
    add-int/lit8 v2, v2, 0x1

    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 116
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 124
    .end local v0           #c:C
    :cond_7
    add-int/lit8 v4, v2, 0x1

    :goto_4
    if-gt v4, v3, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_9

    .line 125
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 126
    .restart local v0       #c:C
    sget-object v8, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 124
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 131
    .end local v0           #c:C
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_a

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 134
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 136
    .end local v2           #highliteBegin:I
    .end local v3           #highliteEnd:I
    .end local v4           #i:I
    .end local v5           #originNumberBegin:I
    .end local v7           #targetTemp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "DialerSearchUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " numberMatchedOffsets = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " originNumber = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method public static getSimType(II)J
    .locals 8
    .parameter "indicate"
    .parameter "isSdnContact"

    .prologue
    .line 62
    const-wide/16 v1, 0x0

    .line 63
    .local v1, photoId:J
    sget-object v5, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v5, :cond_0

    .line 64
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    sput-object v5, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 67
    :cond_0
    sget-object v5, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v5, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v4

    .line 68
    .local v4, slot:I
    const-string v5, "DialerSearchUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSimType] mSlot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, -0x1

    .line 71
    .local v0, i:I
    sget-object v5, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->sSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-virtual {v5, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 72
    .local v3, simInfoForColor:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_1

    .line 73
    iget v0, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 75
    :cond_1
    const-string v5, "DialerSearchUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSimType] i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | isSdnContact : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v5, Lcom/mediatek/contacts/util/SimContactPhotoUtils;

    invoke-direct {v5}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;-><init>()V

    invoke-virtual {v5, p1, v0}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->getPhotoId(II)J

    move-result-wide v1

    .line 78
    return-wide v1
.end method

.method public static tripHyphen(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    .end local p0
    :goto_0
    return-object p0

    .line 33
    .restart local p0
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 37
    .local v0, c:C
    sget-object v3, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->HYPHON_CHARACTERS:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static tripNonDigit(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    .end local p0
    :goto_0
    return-object p0

    .line 49
    .restart local p0
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 52
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 58
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
