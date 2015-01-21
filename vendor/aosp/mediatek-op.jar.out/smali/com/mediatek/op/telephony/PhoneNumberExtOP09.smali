.class public Lcom/mediatek/op/telephony/PhoneNumberExtOP09;
.super Lcom/mediatek/op/telephony/PhoneNumberExt;
.source "PhoneNumberExtOP09.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNumberExtOP09"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mediatek/op/telephony/PhoneNumberExt;-><init>()V

    return-void
.end method


# virtual methods
.method public getMinMatch()I
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0xb

    return v0
.end method

.method public isCustomizedEmergencyNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "number"
    .parameter "plusNumber"
    .parameter "numberPlus"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 16
    const/4 v7, 0x6

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "110"

    aput-object v7, v2, v6

    const-string v7, "112"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string v8, "911"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "999"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, "119"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, "120"

    aput-object v8, v2, v7

    .line 17
    .local v2, emergencyNumList:[Ljava/lang/String;
    const-string v7, "PhoneNumberExtOP09"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCustomizedEmergencyNumber, ecclist:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", plusNumber:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", numberPlus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 20
    .local v1, emergencyNum:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 25
    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 19
    .restart local v1       #emergencyNum:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 25
    goto :goto_1
.end method

.method public isCustomizedEmergencyNumberExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "number"
    .parameter "plusNumber"
    .parameter "numberPlus"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 30
    const/16 v7, 0x9

    new-array v2, v7, [Ljava/lang/String;

    const-string v7, "112"

    aput-object v7, v2, v6

    const-string v7, "911"

    aput-object v7, v2, v5

    const/4 v7, 0x2

    const-string v8, "000"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "08"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, "110"

    aput-object v8, v2, v7

    const/4 v7, 0x5

    const-string v8, "118"

    aput-object v8, v2, v7

    const/4 v7, 0x6

    const-string v8, "119"

    aput-object v8, v2, v7

    const/4 v7, 0x7

    const-string v8, "999"

    aput-object v8, v2, v7

    const/16 v7, 0x8

    const-string v8, "120"

    aput-object v8, v2, v7

    .line 31
    .local v2, emergencyNumList:[Ljava/lang/String;
    const-string v7, "PhoneNumberExtOP09"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isCustomizedEmergencyNumberExt, ecclist:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", plusNumber:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", numberPlus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 34
    .local v1, emergencyNum:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 39
    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 33
    .restart local v1       #emergencyNum:Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #emergencyNum:Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 39
    goto :goto_1
.end method
