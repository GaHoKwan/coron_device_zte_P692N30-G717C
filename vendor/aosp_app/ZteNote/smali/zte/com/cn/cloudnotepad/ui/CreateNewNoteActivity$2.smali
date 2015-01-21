.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$2;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$OnSoundRecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 248
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$2;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->addRecordFile(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$2(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Ljava/lang/String;)V

    .line 249
    return-void
.end method
