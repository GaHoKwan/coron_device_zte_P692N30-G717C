.class Lcom/dolby/ds1appUI/EqualizerAdapter$1;
.super Ljava/lang/Object;
.source "EqualizerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/ds1appUI/EqualizerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/EqualizerAdapter;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/EqualizerAdapter;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dolby/ds1appUI/EqualizerAdapter$1;->this$0:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/dolby/ds1appUI/EqualizerAdapter$1;->this$0:Lcom/dolby/ds1appUI/EqualizerAdapter;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/EqualizerAdapter;->notifyDataSetChanged()V

    .line 150
    return-void
.end method
