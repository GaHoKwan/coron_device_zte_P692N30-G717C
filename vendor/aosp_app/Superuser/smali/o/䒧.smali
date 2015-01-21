.class public Lo/䒧;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/䒧$櫯;,
        Lo/䒧$if;,
        Lo/䒧$鷭;,
        Lo/䒧$ˮ͈;
    }
.end annotation


# static fields
.field static final 鷭:Lo/䒧$ˮ͈;


# direct methods
.method static <clinit>()V
    .locals 2

    .line 0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    const/16 v0, 0xe

    if-lt v1, v0, :cond_0

    .line 126
    new-instance v0, Lo/䒧$櫯;

    invoke-direct {v0}, Lo/䒧$櫯;-><init>()V

    sput-object v0, Lo/䒧;->鷭:Lo/䒧$ˮ͈;

    return-void

    .line 127
    :cond_0
    const/16 v0, 0x9

    if-lt v1, v0, :cond_1

    .line 128
    new-instance v0, Lo/䒧$if;

    invoke-direct {v0}, Lo/䒧$if;-><init>()V

    sput-object v0, Lo/䒧;->鷭:Lo/䒧$ˮ͈;

    return-void

    .line 130
    :cond_1
    new-instance v0, Lo/䒧$鷭;

    invoke-direct {v0}, Lo/䒧$鷭;-><init>()V

    sput-object v0, Lo/䒧;->鷭:Lo/䒧$ˮ͈;

    .line 132
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    return-void
.end method

.method public static 鷭(Landroid/view/View;)I
    .locals 1

    .line 0
    sget-object v0, Lo/䒧;->鷭:Lo/䒧$ˮ͈;

    invoke-interface {v0, p0}, Lo/䒧$ˮ͈;->鷭(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public static 鷭(Landroid/view/View;I)Z
    .locals 1

    .line 0
    sget-object v0, Lo/䒧;->鷭:Lo/䒧$ˮ͈;

    invoke-interface {v0, p0, p1}, Lo/䒧$ˮ͈;->鷭(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method
