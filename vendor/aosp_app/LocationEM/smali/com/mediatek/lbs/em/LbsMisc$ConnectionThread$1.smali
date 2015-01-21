.class Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread$1;
.super Ljava/lang/Thread;
.source "LbsMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;-><init>(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

.field final synthetic val$this$0:Lcom/mediatek/lbs/em/LbsMisc;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;Lcom/mediatek/lbs/em/LbsMisc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread$1;->this$1:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread$1;->val$this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread$1;->this$1:Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;

    #calls: Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->runFunction()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->access$700(Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;)V

    .line 174
    return-void
.end method
