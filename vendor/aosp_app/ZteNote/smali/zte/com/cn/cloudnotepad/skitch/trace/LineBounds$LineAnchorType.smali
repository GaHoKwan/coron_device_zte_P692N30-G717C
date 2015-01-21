.class Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds$LineAnchorType;
.super Ljava/lang/Object;
.source "LineBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineAnchorType"
.end annotation


# static fields
.field public static final END:I = 0x2

.field public static final START:I = 0x1

.field public static final UNKNOWN:I = -0x1


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;


# direct methods
.method private constructor <init>(Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds$LineAnchorType;->this$0:Lzte/com/cn/cloudnotepad/skitch/trace/LineBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
