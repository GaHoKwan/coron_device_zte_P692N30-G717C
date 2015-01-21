.class Lcom/android/music/WeekSelector$1;
.super Ljava/lang/Object;
.source "WeekSelector.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/WeekSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/WeekSelector;


# direct methods
.method constructor <init>(Lcom/android/music/WeekSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "mDialogInterface"
    .parameter "button"

    .prologue
    const/4 v3, -0x1

    .line 127
    if-ne p2, v3, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    #getter for: Lcom/android/music/WeekSelector;->mCurrentSelectedPos:I
    invoke-static {v1}, Lcom/android/music/WeekSelector;->access$000(Lcom/android/music/WeekSelector;)I

    move-result v0

    .line 129
    .local v0, numweeks:I
    iget-object v1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    const-string v2, "numweeks"

    invoke-static {v1, v2, v0}, Lcom/android/music/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    iget-object v1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 134
    .end local v0           #numweeks:I
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 135
    return-void

    .line 131
    :cond_1
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0
.end method
