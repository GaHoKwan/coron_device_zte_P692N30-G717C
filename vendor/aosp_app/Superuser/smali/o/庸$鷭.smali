.class Lo/庸$鷭;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/庸$櫯;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/庸;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u9ded"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public 鷭(Landroid/view/ViewConfiguration;)I
    .locals 1

    .line 0
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    return v0
.end method
