.class public final Ltmsdk/fg/module/qscanner/QScanResult;
.super Ltmsdkobf/df;
.source "SourceFile"


# static fields
.field static EU:Ltmsdk/fg/module/qscanner/ApkKey;

.field static ap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public advice:I

.field public apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

.field public certtype:I

.field public dexsha1:Ljava/lang/String;

.field public discription:Ljava/lang/String;

.field public label:Ljava/lang/String;

.field public malwareid:I

.field public name:Ljava/lang/String;

.field public plugins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/c;",
            ">;"
        }
    .end annotation
.end field

.field public product:I

.field public safelevel:I

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    iput-object v2, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    .line 13
    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->label:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    .line 19
    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->advice:I

    .line 21
    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->malwareid:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->name:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->url:Ljava/lang/String;

    .line 27
    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->certtype:I

    .line 29
    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->safelevel:I

    .line 31
    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->product:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->dexsha1:Ljava/lang/String;

    .line 35
    iput-object v2, p0, Ltmsdk/fg/module/qscanner/QScanResult;->plugins:Ljava/util/ArrayList;

    .line 39
    return-void
.end method

.method public constructor <init>(Ltmsdk/fg/module/qscanner/ApkKey;ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "apkkey"
    .parameter "type"
    .parameter "label"
    .parameter "discription"
    .parameter "advice"
    .parameter "malwareid"
    .parameter "name"
    .parameter "url"
    .parameter "certtype"
    .parameter "safelevel"
    .parameter "product"
    .parameter "dexsha1"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltmsdk/fg/module/qscanner/ApkKey;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p13, plugins:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/c;>;"
    invoke-direct {p0}, Ltmsdkobf/df;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->label:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->advice:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->malwareid:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->name:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->url:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->certtype:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->safelevel:I

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->product:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->dexsha1:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->plugins:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    .line 44
    iput p2, p0, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    .line 45
    iput-object p3, p0, Ltmsdk/fg/module/qscanner/QScanResult;->label:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Ltmsdk/fg/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    .line 47
    iput p5, p0, Ltmsdk/fg/module/qscanner/QScanResult;->advice:I

    .line 48
    iput p6, p0, Ltmsdk/fg/module/qscanner/QScanResult;->malwareid:I

    .line 49
    iput-object p7, p0, Ltmsdk/fg/module/qscanner/QScanResult;->name:Ljava/lang/String;

    .line 50
    iput-object p8, p0, Ltmsdk/fg/module/qscanner/QScanResult;->url:Ljava/lang/String;

    .line 51
    iput p9, p0, Ltmsdk/fg/module/qscanner/QScanResult;->certtype:I

    .line 52
    iput p10, p0, Ltmsdk/fg/module/qscanner/QScanResult;->safelevel:I

    .line 53
    iput p11, p0, Ltmsdk/fg/module/qscanner/QScanResult;->product:I

    .line 54
    iput-object p12, p0, Ltmsdk/fg/module/qscanner/QScanResult;->dexsha1:Ljava/lang/String;

    .line 55
    iput-object p13, p0, Ltmsdk/fg/module/qscanner/QScanResult;->plugins:Ljava/util/ArrayList;

    .line 56
    return-void
.end method


# virtual methods
.method public readFrom(Ltmsdkobf/dd;)V
    .locals 4
    .parameter "_is"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 98
    sget-object v1, Ltmsdk/fg/module/qscanner/QScanResult;->EU:Ltmsdk/fg/module/qscanner/ApkKey;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Ltmsdk/fg/module/qscanner/ApkKey;

    invoke-direct {v1}, Ltmsdk/fg/module/qscanner/ApkKey;-><init>()V

    sput-object v1, Ltmsdk/fg/module/qscanner/QScanResult;->EU:Ltmsdk/fg/module/qscanner/ApkKey;

    .line 102
    :cond_0
    sget-object v1, Ltmsdk/fg/module/qscanner/QScanResult;->EU:Ltmsdk/fg/module/qscanner/ApkKey;

    invoke-virtual {p1, v1, v3, v2}, Ltmsdkobf/dd;->a(Ltmsdkobf/df;IZ)Ltmsdkobf/df;

    move-result-object v1

    check-cast v1, Ltmsdk/fg/module/qscanner/ApkKey;

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    .line 103
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    invoke-virtual {p1, v1, v2, v2}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    .line 104
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->label:Ljava/lang/String;

    .line 105
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    .line 106
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->advice:I

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->advice:I

    .line 107
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->malwareid:I

    const/4 v2, 0x5

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->malwareid:I

    .line 108
    const/4 v1, 0x6

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->name:Ljava/lang/String;

    .line 109
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->url:Ljava/lang/String;

    .line 110
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->certtype:I

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->certtype:I

    .line 111
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->safelevel:I

    const/16 v2, 0x9

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->safelevel:I

    .line 112
    iget v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->product:I

    const/16 v2, 0xa

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->a(IIZ)I

    move-result v1

    iput v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->product:I

    .line 113
    const/16 v1, 0xb

    invoke-virtual {p1, v1, v3}, Ltmsdkobf/dd;->a(IZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->dexsha1:Ljava/lang/String;

    .line 114
    sget-object v1, Ltmsdk/fg/module/qscanner/QScanResult;->ap:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Ltmsdk/fg/module/qscanner/QScanResult;->ap:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ltmsdkobf/c;

    invoke-direct {v0}, Ltmsdkobf/c;-><init>()V

    .line 118
    .local v0, __var_1:Ltmsdkobf/c;
    sget-object v1, Ltmsdk/fg/module/qscanner/QScanResult;->ap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v0           #__var_1:Ltmsdkobf/c;
    :cond_1
    sget-object v1, Ltmsdk/fg/module/qscanner/QScanResult;->ap:Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-virtual {p1, v1, v2, v3}, Ltmsdkobf/dd;->b(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Ltmsdk/fg/module/qscanner/QScanResult;->plugins:Ljava/util/ArrayList;

    .line 121
    return-void
.end method

.method public writeTo(Ltmsdkobf/de;)V
    .locals 2
    .parameter "_os"

    .prologue
    .line 60
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->apkkey:Ltmsdk/fg/module/qscanner/ApkKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ltmsdkobf/df;I)V

    .line 61
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 62
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->label:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 66
    :cond_0
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->discription:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 70
    :cond_1
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->advice:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 71
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->malwareid:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 72
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 76
    :cond_2
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->url:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->url:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 80
    :cond_3
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->certtype:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 81
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->safelevel:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 82
    iget v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->product:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->write(II)V

    .line 83
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->dexsha1:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->dexsha1:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/lang/String;I)V

    .line 87
    :cond_4
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->plugins:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 89
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/QScanResult;->plugins:Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Ltmsdkobf/de;->a(Ljava/util/Collection;I)V

    .line 91
    :cond_5
    return-void
.end method
