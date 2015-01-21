.class Ltmsdk/fg/module/qscanner/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/fg/module/qscanner/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/fg/module/qscanner/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field Fm:Ljava/lang/String;

.field Fn:I

.field Fo:Ljava/lang/String;

.field Fp:I

.field mName:Ljava/lang/String;

.field mType:I


# direct methods
.method public constructor <init>(Ltmsdkobf/bl;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iget-object v0, p1, Ltmsdkobf/bl;->name:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$b;->mName:Ljava/lang/String;

    .line 260
    iget-object v0, p1, Ltmsdkobf/bl;->ft:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$b;->Fm:Ljava/lang/String;

    .line 261
    iget v0, p1, Ltmsdkobf/bl;->level:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$b;->Fn:I

    .line 262
    iget-object v0, p1, Ltmsdkobf/bl;->eb:Ljava/lang/String;

    iput-object v0, p0, Ltmsdk/fg/module/qscanner/h$b;->Fo:Ljava/lang/String;

    .line 263
    iget v0, p1, Ltmsdkobf/bl;->advice:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$b;->Fp:I

    .line 264
    iget v0, p1, Ltmsdkobf/bl;->type:I

    iput v0, p0, Ltmsdk/fg/module/qscanner/h$b;->mType:I

    .line 265
    return-void
.end method


# virtual methods
.method public b(Ltmsdk/common/module/qscanner/QScanResultEntity;)Z
    .locals 1
    .parameter "scanResult"

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public hw()Ltmsdk/common/module/qscanner/QScanResultEntity;
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method
