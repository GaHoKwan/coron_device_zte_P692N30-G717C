.class public Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
.super Ljava/lang/Object;
.source "MultiChoiceRequest.java"


# instance fields
.field public mAccountDst:Landroid/accounts/Account;

.field public mAccountSrc:Landroid/accounts/Account;

.field public mContactId:I

.field public mContactName:Ljava/lang/String;

.field public mIndicator:J

.field public mSimIndex:I

.field public mTargetAccount:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(JIILjava/lang/String;)V
    .locals 0
    .parameter "indicator"
    .parameter "simIndex"
    .parameter "contactId"
    .parameter "displayName"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    .line 30
    iput p3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mSimIndex:I

    .line 31
    iput p4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactId:I

    .line 32
    iput-object p5, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(JIILjava/lang/String;Landroid/accounts/Account;)V
    .locals 0
    .parameter "indicator"
    .parameter "simIndex"
    .parameter "contactId"
    .parameter "displayName"
    .parameter "targetAccount"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    .line 37
    iput p3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mSimIndex:I

    .line 38
    iput p4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactId:I

    .line 39
    iput-object p5, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactName:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mTargetAccount:Landroid/accounts/Account;

    .line 41
    return-void
.end method

.method public constructor <init>(JIILjava/lang/String;Landroid/accounts/Account;Landroid/accounts/Account;)V
    .locals 0
    .parameter "indicator"
    .parameter "simIndex"
    .parameter "contactId"
    .parameter "displayName"
    .parameter "source"
    .parameter "destination"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mIndicator:J

    .line 46
    iput p3, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mSimIndex:I

    .line 47
    iput p4, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactId:I

    .line 48
    iput-object p5, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactName:Ljava/lang/String;

    .line 49
    iput-object p6, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mAccountSrc:Landroid/accounts/Account;

    .line 50
    iput-object p7, p0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mAccountDst:Landroid/accounts/Account;

    .line 51
    return-void
.end method
