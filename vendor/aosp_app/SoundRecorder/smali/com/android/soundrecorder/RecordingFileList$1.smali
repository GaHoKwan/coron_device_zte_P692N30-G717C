.class Lcom/android/soundrecorder/RecordingFileList$1;
.super Ljava/lang/Object;
.source "RecordingFileList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/RecordingFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/RecordingFileList;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/RecordingFileList;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/soundrecorder/RecordingFileList$1;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 76
    const-string v0, "SR/RecordingFileList"

    const-string v1, "<mDeleteDialogListener onClick>"

    invoke-static {v0, v1}, Lcom/android/soundrecorder/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/soundrecorder/RecordingFileList$1;->this$0:Lcom/android/soundrecorder/RecordingFileList;

    invoke-virtual {v0}, Lcom/android/soundrecorder/RecordingFileList;->deleteItems()V

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 79
    return-void
.end method
