.class Lcom/dolby/ds1appUI/ProfilesAdapter$1;
.super Ljava/lang/Object;
.source "ProfilesAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dolby/ds1appUI/ProfilesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dolby/ds1appUI/ProfilesAdapter;


# direct methods
.method constructor <init>(Lcom/dolby/ds1appUI/ProfilesAdapter;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/dolby/ds1appUI/ProfilesAdapter$1;->this$0:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/dolby/ds1appUI/ProfilesAdapter$1;->this$0:Lcom/dolby/ds1appUI/ProfilesAdapter;

    invoke-virtual {v0}, Lcom/dolby/ds1appUI/ProfilesAdapter;->notifyDataSetChanged()V

    .line 470
    return-void
.end method
