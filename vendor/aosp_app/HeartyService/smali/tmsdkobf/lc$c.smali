.class final Ltmsdkobf/lc$c;
.super Ltmsdk/common/BaseService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/lc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private BG:Ltmsdkobf/lc$d;

.field final synthetic BH:Ltmsdkobf/lc;


# direct methods
.method private constructor <init>(Ltmsdkobf/lc;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Ltmsdkobf/lc$c;->BH:Ltmsdkobf/lc;

    invoke-direct {p0}, Ltmsdk/common/BaseService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltmsdkobf/lc;Ltmsdkobf/lc$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Ltmsdkobf/lc$c;-><init>(Ltmsdkobf/lc;)V

    return-void
.end method


# virtual methods
.method public onBind()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 106
    invoke-super {p0, p1}, Ltmsdk/common/BaseService;->onCreate(Landroid/content/Context;)V

    .line 108
    new-instance v0, Ltmsdkobf/lc$d;

    iget-object v1, p0, Ltmsdkobf/lc$c;->BH:Ltmsdkobf/lc;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltmsdkobf/lc$d;-><init>(Ltmsdkobf/lc;Ltmsdkobf/lc$1;)V

    iput-object v0, p0, Ltmsdkobf/lc$c;->BG:Ltmsdkobf/lc$d;

    .line 109
    iget-object v0, p0, Ltmsdkobf/lc$c;->BG:Ltmsdkobf/lc$d;

    invoke-virtual {v0}, Ltmsdkobf/lc$d;->register()V

    .line 110
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Ltmsdkobf/lc$c;->BG:Ltmsdkobf/lc$d;

    invoke-virtual {v0}, Ltmsdkobf/lc$d;->fW()V

    .line 115
    invoke-super {p0}, Ltmsdk/common/BaseService;->onDestory()V

    .line 116
    return-void
.end method
