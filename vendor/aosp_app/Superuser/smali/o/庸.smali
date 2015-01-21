.class public Lo/庸;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/庸$if;,
        Lo/庸$鷭;,
        Lo/庸$櫯;
    }
.end annotation


# static fields
.field static final 鷭:Lo/庸$櫯;


# direct methods
.method static <clinit>()V
    .locals 2

    .line 0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Lo/庸$if;

    invoke-direct {v0}, Lo/庸$if;-><init>()V

    sput-object v0, Lo/庸;->鷭:Lo/庸$櫯;

    return-void

    .line 61
    :cond_0
    new-instance v0, Lo/庸$鷭;

    invoke-direct {v0}, Lo/庸$鷭;-><init>()V

    sput-object v0, Lo/庸;->鷭:Lo/庸$櫯;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static 鷭(Landroid/view/ViewConfiguration;)I
    .locals 1

    .line 0
    sget-object v0, Lo/庸;->鷭:Lo/庸$櫯;

    invoke-interface {v0, p0}, Lo/庸$櫯;->鷭(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method
