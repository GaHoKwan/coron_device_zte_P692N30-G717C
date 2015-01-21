.class Lcom/android/mipop/api/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic C:Lcom/android/mipop/api/MyApplication;


# direct methods
.method constructor <init>(Lcom/android/mipop/api/MyApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mipop/api/d;->C:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "MyAppWidget"

    const-string v1, "app: intent recved."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mipop/api/d;->C:Lcom/android/mipop/api/MyApplication;

    invoke-static {v0, p2}, Lcom/android/mipop/api/MyApplication;->a(Lcom/android/mipop/api/MyApplication;Landroid/content/Intent;)V

    return-void
.end method
