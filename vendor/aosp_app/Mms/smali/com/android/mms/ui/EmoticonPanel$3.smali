.class Lcom/android/mms/ui/EmoticonPanel$3;
.super Ljava/lang/Object;
.source "EmoticonPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EmoticonPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonPanel;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/mms/ui/EmoticonPanel$3;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 378
    const-string v0, "Mms/EmoticonPanel"

    const-string v1, "Quick delete emoticon characters."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/android/mms/ui/EmoticonPanel$3;->this$0:Lcom/android/mms/ui/EmoticonPanel;

    #getter for: Lcom/android/mms/ui/EmoticonPanel;->mListener:Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;
    invoke-static {v0}, Lcom/android/mms/ui/EmoticonPanel;->access$200(Lcom/android/mms/ui/EmoticonPanel;)Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/android/mms/ui/EmoticonPanel$EditEmoticonListener;->doAction(ILjava/lang/String;)V

    .line 380
    return-void
.end method
