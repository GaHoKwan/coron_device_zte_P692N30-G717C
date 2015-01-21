.class Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask$1;
.super Ljava/lang/Object;
.source "PrivacyGallayChooseActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$UpdatePD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask$1;->this$1:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "n"
    .parameter "percent"
    .parameter "name"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask$1;->this$1:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;

    iget-object v0, v0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$encryTask;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    #calls: Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->updatePDMsg(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, p2, p3}, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;->access$1000(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;ILjava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method
