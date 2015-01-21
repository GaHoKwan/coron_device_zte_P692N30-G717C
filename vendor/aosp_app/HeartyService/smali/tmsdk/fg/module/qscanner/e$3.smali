.class Ltmsdk/fg/module/qscanner/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/fg/module/qscanner/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/fg/module/qscanner/e;->d(Ltmsdk/fg/module/qscanner/QScanListenerV2;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

.field final synthetic Fk:Ltmsdk/fg/module/qscanner/e;


# direct methods
.method constructor <init>(Ltmsdk/fg/module/qscanner/e;Ltmsdk/fg/module/qscanner/QScanListenerV2;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Ltmsdk/fg/module/qscanner/e$3;->Fk:Ltmsdk/fg/module/qscanner/e;

    iput-object p2, p0, Ltmsdk/fg/module/qscanner/e$3;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eU()Z
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 542
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e$3;->Fk:Ltmsdk/fg/module/qscanner/e;

    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e$3;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    invoke-static {v0, v2, v1}, Ltmsdk/fg/module/qscanner/e;->a(Ltmsdk/fg/module/qscanner/e;ILtmsdk/fg/module/qscanner/QScanListenerV2;)V

    .line 543
    iget-object v0, p0, Ltmsdk/fg/module/qscanner/e$3;->Fk:Ltmsdk/fg/module/qscanner/e;

    iget-object v1, p0, Ltmsdk/fg/module/qscanner/e$3;->Fj:Ltmsdk/fg/module/qscanner/QScanListenerV2;

    invoke-static {v0, v2, v1}, Ltmsdk/fg/module/qscanner/e;->b(Ltmsdk/fg/module/qscanner/e;ILtmsdk/fg/module/qscanner/QScanListenerV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x1

    .line 547
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
