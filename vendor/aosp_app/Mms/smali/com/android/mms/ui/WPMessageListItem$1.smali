.class Lcom/android/mms/ui/WPMessageListItem$1;
.super Ljava/lang/Object;
.source "WPMessageListItem.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WPMessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageListItem$1;->this$0:Lcom/android/mms/ui/WPMessageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "spanstartv"
    .parameter "v"
    .parameter "fm"

    .prologue
    .line 229
    iget v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 230
    return-void
.end method
