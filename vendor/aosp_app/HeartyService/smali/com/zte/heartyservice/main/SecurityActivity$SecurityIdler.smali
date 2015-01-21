.class final Lcom/zte/heartyservice/main/SecurityActivity$SecurityIdler;
.super Ljava/lang/Object;
.source "SecurityActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/SecurityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityIdler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/SecurityActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/main/SecurityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/zte/heartyservice/main/SecurityActivity$SecurityIdler;->this$0:Lcom/zte/heartyservice/main/SecurityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/zte/heartyservice/main/SecurityActivity$SecurityIdler;->this$0:Lcom/zte/heartyservice/main/SecurityActivity;

    invoke-virtual {v0, v1, v1}, Lcom/zte/heartyservice/main/SecurityActivity;->updateSafityIndicator(Landroid/content/Intent;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    return v0
.end method
