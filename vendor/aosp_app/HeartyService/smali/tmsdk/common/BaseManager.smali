.class public abstract Ltmsdk/common/BaseManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_FOREVER:I = 0x1

.field public static final TYPE_ONCE:I = 0x2


# instance fields
.field private wT:Ltmsdk/common/BaseManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final dn()Z
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Ltmsdkobf/is;->dt()Ltmsdkobf/is;

    move-result-object v0

    invoke-virtual {v0}, Ltmsdkobf/is;->dn()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Ltmsdk/common/BaseManager;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ImplType:",
            "Ltmsdk/common/BaseManager;",
            ">(TImplType;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, impl:Ltmsdk/common/BaseManager;,"TImplType;"
    iput-object p1, p0, Ltmsdk/common/BaseManager;->wT:Ltmsdk/common/BaseManager;

    .line 33
    return-void
.end method

.method protected eM()Ltmsdk/common/BaseManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ImplType:",
            "Ltmsdk/common/BaseManager;",
            ">()TImplType;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Ltmsdk/common/BaseManager;->wT:Ltmsdk/common/BaseManager;

    return-object v0
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Ltmsdk/common/BaseManager;->wT:Ltmsdk/common/BaseManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdk/common/BaseManager;->wT:Ltmsdk/common/BaseManager;

    invoke-virtual {v0}, Ltmsdk/common/BaseManager;->getSingletonType()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method
