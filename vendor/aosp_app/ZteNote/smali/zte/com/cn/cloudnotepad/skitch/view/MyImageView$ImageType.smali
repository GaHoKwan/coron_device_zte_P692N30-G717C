.class public Lzte/com/cn/cloudnotepad/skitch/view/MyImageView$ImageType;
.super Ljava/lang/Object;
.source "MyImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageType"
.end annotation


# static fields
.field public static final IMAGE_DOODLE:I = 0x2

.field public static final IMAGE_HANDWRITE:I = 0x3

.field public static final IMAGE_NORMAL:I = 0x1


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView$ImageType;->this$0:Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
