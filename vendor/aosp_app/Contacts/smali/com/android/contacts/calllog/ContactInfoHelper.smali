.class public Lcom/android/contacts/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "currentCountryIso"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/contacts/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 39
    return-void
.end method
