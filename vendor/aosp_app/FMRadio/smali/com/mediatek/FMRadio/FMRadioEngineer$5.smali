.class Lcom/mediatek/FMRadio/FMRadioEngineer$5;
.super Ljava/lang/Thread;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/FMRadio/FMRadioEngineer;->onPlayFM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;


# direct methods
.method constructor <init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$5;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer$5;->this$0:Lcom/mediatek/FMRadio/FMRadioEngineer;

    #calls: Lcom/mediatek/FMRadio/FMRadioEngineer;->playFM()V
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->access$3500(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    .line 741
    return-void
.end method
