.class public Ltmsdkobf/it;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static rJ:Ljava/lang/String;

.field private static rK:Ljava/lang/String;

.field private static rL:I

.field private static rM:Ljava/lang/String;

.field private static rN:Ljava/lang/String;

.field private static rO:I

.field private static rP:Ljava/lang/String;

.field private static rQ:Ljava/lang/String;

.field private static rR:I

.field private static rS:Ljava/lang/String;

.field private static rT:Ljava/lang/String;

.field private static rU:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x50

    .line 12
    const-string v0, "http://mmsc.monternet.com"

    sput-object v0, Ltmsdkobf/it;->rJ:Ljava/lang/String;

    .line 13
    const-string v0, "10.0.0.172"

    sput-object v0, Ltmsdkobf/it;->rK:Ljava/lang/String;

    .line 14
    sput v1, Ltmsdkobf/it;->rL:I

    .line 17
    const-string v0, "http://mmsc.myuni.com.cn"

    sput-object v0, Ltmsdkobf/it;->rM:Ljava/lang/String;

    .line 18
    const-string v0, "10.0.0.172"

    sput-object v0, Ltmsdkobf/it;->rN:Ljava/lang/String;

    .line 19
    sput v1, Ltmsdkobf/it;->rO:I

    .line 22
    const-string v0, "http://mmsc.vnet.mobi"

    sput-object v0, Ltmsdkobf/it;->rP:Ljava/lang/String;

    .line 23
    const-string v0, "10.0.0.200"

    sput-object v0, Ltmsdkobf/it;->rQ:Ljava/lang/String;

    .line 24
    sput v1, Ltmsdkobf/it;->rR:I

    .line 28
    const-string v0, "http://mmsc.myuni.com.cn"

    sput-object v0, Ltmsdkobf/it;->rS:Ljava/lang/String;

    .line 29
    const-string v0, "10.0.0.172"

    sput-object v0, Ltmsdkobf/it;->rT:Ljava/lang/String;

    .line 30
    sput v1, Ltmsdkobf/it;->rU:I

    return-void
.end method

.method public static bm(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apn"

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 36
    const-string v1, "cmwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    sget-object v0, Ltmsdkobf/it;->rJ:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_2
    const-string v1, "uniwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    sget-object v0, Ltmsdkobf/it;->rM:Ljava/lang/String;

    goto :goto_0

    .line 40
    :cond_3
    const-string v1, "ctwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 41
    sget-object v0, Ltmsdkobf/it;->rP:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_4
    const-string v1, "3gwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    sget-object v0, Ltmsdkobf/it;->rS:Ljava/lang/String;

    goto :goto_0
.end method

.method public static bn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apn"

    .prologue
    const/4 v0, 0x0

    .line 48
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 51
    const-string v1, "cmwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    sget-object v0, Ltmsdkobf/it;->rK:Ljava/lang/String;

    goto :goto_0

    .line 53
    :cond_2
    const-string v1, "uniwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    sget-object v0, Ltmsdkobf/it;->rN:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_3
    const-string v1, "ctwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    sget-object v0, Ltmsdkobf/it;->rQ:Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_4
    const-string v1, "3gwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget-object v0, Ltmsdkobf/it;->rT:Ljava/lang/String;

    goto :goto_0
.end method

.method public static bo(Ljava/lang/String;)I
    .locals 2
    .parameter "apn"

    .prologue
    const/4 v0, -0x1

    .line 63
    if-nez p0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 66
    const-string v1, "cmwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    sget v0, Ltmsdkobf/it;->rL:I

    goto :goto_0

    .line 68
    :cond_2
    const-string v1, "uniwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    sget v0, Ltmsdkobf/it;->rO:I

    goto :goto_0

    .line 70
    :cond_3
    const-string v1, "ctwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 71
    sget v0, Ltmsdkobf/it;->rR:I

    goto :goto_0

    .line 72
    :cond_4
    const-string v1, "3gwap"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    sget v0, Ltmsdkobf/it;->rU:I

    goto :goto_0
.end method
