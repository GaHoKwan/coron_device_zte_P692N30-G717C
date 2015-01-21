.class public final Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;
.super Ljava/lang/Object;
.source "CallLogInfo.java"


# instance fields
.field public mCallDetailIntent:Landroid/content/Intent;

.field public mContactInfo:Lcom/android/contacts/calllog/ContactInfo;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/ContactInfo;Landroid/content/Intent;)V
    .locals 0
    .parameter "contactInfo"
    .parameter "callDetailIntent"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    .line 14
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/calllog/CallLogInfo;->mCallDetailIntent:Landroid/content/Intent;

    .line 15
    return-void
.end method
