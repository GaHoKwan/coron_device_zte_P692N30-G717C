.class public Lo/岱;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/岱$if;,
        Lo/岱$鷭;,
        Lo/岱$櫯;
    }
.end annotation


# static fields
.field static final 鷭:Lo/岱$櫯;


# direct methods
.method static <clinit>()V
    .locals 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 100
    new-instance v0, Lo/岱$if;

    invoke-direct {v0}, Lo/岱$if;-><init>()V

    sput-object v0, Lo/岱;->鷭:Lo/岱$櫯;

    return-void

    .line 102
    :cond_0
    new-instance v0, Lo/岱$鷭;

    invoke-direct {v0}, Lo/岱$鷭;-><init>()V

    sput-object v0, Lo/岱;->鷭:Lo/岱$櫯;

    .line 104
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static ȃ(Landroid/view/MotionEvent;I)F
    .locals 1

    .line 0
    sget-object v0, Lo/岱;->鷭:Lo/岱$櫯;

    invoke-interface {v0, p0, p1}, Lo/岱$櫯;->ȃ(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static ˮ͈(Landroid/view/MotionEvent;I)F
    .locals 1

    .line 0
    sget-object v0, Lo/岱;->鷭:Lo/岱$櫯;

    invoke-interface {v0, p0, p1}, Lo/岱$櫯;->ˮ͈(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static 櫯(Landroid/view/MotionEvent;I)I
    .locals 1

    .line 0
    sget-object v0, Lo/岱;->鷭:Lo/岱$櫯;

    invoke-interface {v0, p0, p1}, Lo/岱$櫯;->櫯(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static 鷭(Landroid/view/MotionEvent;)I
    .locals 2

    .line 0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static 鷭(Landroid/view/MotionEvent;I)I
    .locals 1

    .line 0
    sget-object v0, Lo/岱;->鷭:Lo/岱$櫯;

    invoke-interface {v0, p0, p1}, Lo/岱$櫯;->鷭(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method
