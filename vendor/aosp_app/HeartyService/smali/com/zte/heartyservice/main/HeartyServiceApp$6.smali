.class Lcom/zte/heartyservice/main/HeartyServiceApp$6;
.super Ljava/lang/Object;
.source "HeartyServiceApp.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/HeartyServiceApp;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter

    .prologue
    .line 2305
    iput-object p1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp$6;->this$0:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 2309
    const/4 v0, 0x0

    return v0
.end method
