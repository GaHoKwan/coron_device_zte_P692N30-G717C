.class Lcom/android/contacts/calllog/CallLogListItemHelper;
.super Ljava/lang/Object;
.source "CallLogListItemHelper.java"


# instance fields
.field private final mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

.field private final mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/contacts/PhoneCallDetailsHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V
    .locals 0
    .parameter "phoneCallDetailsHelper"
    .parameter "phoneNumberHelper"
    .parameter "resources"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    .line 47
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 48
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogListItemHelper;->mResources:Landroid/content/res/Resources;

    .line 49
    return-void
.end method
