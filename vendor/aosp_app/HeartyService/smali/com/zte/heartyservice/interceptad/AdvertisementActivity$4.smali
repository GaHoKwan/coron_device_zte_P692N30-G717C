.class Lcom/zte/heartyservice/interceptad/AdvertisementActivity$4;
.super Ljava/lang/Object;
.source "AdvertisementActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->createWaitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$4;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$4;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    #calls: Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->dismissWaitDialog()V
    invoke-static {v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->access$500(Lcom/zte/heartyservice/interceptad/AdvertisementActivity;)V

    .line 209
    iget-object v0, p0, Lcom/zte/heartyservice/interceptad/AdvertisementActivity$4;->this$0:Lcom/zte/heartyservice/interceptad/AdvertisementActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/interceptad/AdvertisementActivity;->finish()V

    .line 210
    return-void
.end method
