.class Lcom/android/soundrecorder/SoundRecorder$6$1;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder$6;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/soundrecorder/SoundRecorder$6;

.field final synthetic val$viewTemp:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder$6;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$6$1;->this$1:Lcom/android/soundrecorder/SoundRecorder$6;

    iput-object p2, p0, Lcom/android/soundrecorder/SoundRecorder$6$1;->val$viewTemp:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1500
    iget-object v1, p0, Lcom/android/soundrecorder/SoundRecorder$6$1;->val$viewTemp:Landroid/view/View;

    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1501
    .local v0, textView:Landroid/widget/TextView;
    const-string v1, "SR/SoundRecorder"

    const-string v2, "<create ListMenuItemView> setSingleLine"

    invoke-static {v1, v2}, Lcom/android/soundrecorder/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1504
    return-void
.end method
