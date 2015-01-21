.class public Lo/Ė;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ė$if;,
        Lo/Ė$鷭;,
        Lo/Ė$櫯;
    }
.end annotation


# static fields
.field private static final 櫯:Lo/Ė$櫯;


# instance fields
.field private 鷭:Ljava/lang/Object;


# direct methods
.method static <clinit>()V
    .locals 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Lo/Ė$if;

    invoke-direct {v0}, Lo/Ė$if;-><init>()V

    sput-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    return-void

    .line 40
    :cond_0
    new-instance v0, Lo/Ė$鷭;

    invoke-direct {v0}, Lo/Ė$鷭;-><init>()V

    sput-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    invoke-interface {v0, p1}, Lo/Ė$櫯;->鷭(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lo/Ė;->鷭:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public ˮ͈()Z
    .locals 2

    .line 0
    sget-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    iget-object v1, p0, Lo/Ė;->鷭:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/Ė$櫯;->ˮ͈(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public 櫯()V
    .locals 2

    .line 0
    sget-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    iget-object v1, p0, Lo/Ė;->鷭:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/Ė$櫯;->櫯(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public 鷭(II)V
    .locals 2

    .line 0
    sget-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    iget-object v1, p0, Lo/Ė;->鷭:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lo/Ė$櫯;->鷭(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method

.method public 鷭()Z
    .locals 2

    .line 0
    sget-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    iget-object v1, p0, Lo/Ė;->鷭:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/Ė$櫯;->鷭(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public 鷭(F)Z
    .locals 2

    .line 0
    sget-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    iget-object v1, p0, Lo/Ė;->鷭:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lo/Ė$櫯;->鷭(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public 鷭(Landroid/graphics/Canvas;)Z
    .locals 2

    .line 0
    sget-object v0, Lo/Ė;->櫯:Lo/Ė$櫯;

    iget-object v1, p0, Lo/Ė;->鷭:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lo/Ė$櫯;->鷭(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method
