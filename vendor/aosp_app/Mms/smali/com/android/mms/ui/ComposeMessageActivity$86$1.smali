.class Lcom/android/mms/ui/ComposeMessageActivity$86$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$86;->onLayoutSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$86;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$86;)V
    .locals 0
    .parameter

    .prologue
    .line 10069
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$86$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$86;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10071
    const-string v0, "Mms/compose"

    const-string v1, "onLayoutSizeChanged(): mTextEditor.setMaxHeight: 140"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10073
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$86;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$86$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$86;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCurrentMaxHeight:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8800(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x8c

    div-int/lit16 v1, v1, 0x320

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 10075
    return-void
.end method
