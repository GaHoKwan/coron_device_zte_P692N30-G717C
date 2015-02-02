.class Lcom/dolby/ds1appUI/FragProfilePresets$1$2;
.super Ljava/lang/Object;
.source "FragProfilePresets.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/ds1appUI/FragProfilePresets$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dolby/ds1appUI/FragProfilePresets$1;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/FragProfilePresets$1;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1$2;->this$1:Lcom/dolby/ds1appUI/FragProfilePresets$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/dolby/ds1appUI/FragProfilePresets$1$2;->this$1:Lcom/dolby/ds1appUI/FragProfilePresets$1;

    #calls: Lcom/dolby/ds1appUI/FragProfilePresets$1;->removePreDrawListener()V
    invoke-static {v0}, Lcom/dolby/ds1appUI/FragProfilePresets$1;->access$100(Lcom/dolby/ds1appUI/FragProfilePresets$1;)V

    .line 334
    return-void
.end method
