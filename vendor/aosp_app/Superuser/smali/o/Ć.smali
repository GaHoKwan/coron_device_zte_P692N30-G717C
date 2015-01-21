.class public Lo/Ć;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ć$if;,
        Lo/Ć$鷭;,
        Lo/Ć$櫯;
    }
.end annotation


# static fields
.field static final 鷭:Lo/Ć$櫯;


# direct methods
.method static <clinit>()V
    .locals 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 118
    new-instance v0, Lo/Ć$if;

    invoke-direct {v0}, Lo/Ć$if;-><init>()V

    sput-object v0, Lo/Ć;->鷭:Lo/Ć$櫯;

    return-void

    .line 120
    :cond_0
    new-instance v0, Lo/Ć$鷭;

    invoke-direct {v0}, Lo/Ć$鷭;-><init>()V

    sput-object v0, Lo/Ć;->鷭:Lo/Ć$櫯;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static 鷭(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 0
    sget-object v0, Lo/Ć;->鷭:Lo/Ć$櫯;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1}, Lo/Ć$櫯;->櫯(I)Z

    move-result v0

    return v0
.end method

.method public static 鷭(Landroid/view/KeyEvent;I)Z
    .locals 2

    .line 0
    sget-object v0, Lo/Ć;->鷭:Lo/Ć$櫯;

    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lo/Ć$櫯;->鷭(II)Z

    move-result v0

    return v0
.end method
