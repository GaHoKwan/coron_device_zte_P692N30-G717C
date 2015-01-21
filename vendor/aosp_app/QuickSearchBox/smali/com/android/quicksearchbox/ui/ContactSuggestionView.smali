.class public Lcom/android/quicksearchbox/ui/ContactSuggestionView;
.super Lcom/android/quicksearchbox/ui/DefaultSuggestionView;
.source "ContactSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/ContactSuggestionView$1;,
        Lcom/android/quicksearchbox/ui/ContactSuggestionView$Factory;,
        Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;
    }
.end annotation


# static fields
.field private static final CONTACT_LOOKUP_URI:Ljava/lang/String; = null

.field private static final VIEW_ID:Ljava/lang/String; = "contact"


# instance fields
.field private mQuickContact:Lcom/android/quicksearchbox/ui/ContactBadge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->CONTACT_LOOKUP_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->CONTACT_LOOKUP_URI:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V
    .locals 3
    .parameter "suggestion"
    .parameter "userQuery"

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->bindAsSuggestion(Lcom/android/quicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->mQuickContact:Lcom/android/quicksearchbox/ui/ContactBadge;

    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 66
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->mQuickContact:Lcom/android/quicksearchbox/ui/ContactBadge;

    new-instance v1, Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/ui/ContactSuggestionView$ContactBadgeClickListener;-><init>(Lcom/android/quicksearchbox/ui/ContactSuggestionView;Lcom/android/quicksearchbox/ui/ContactSuggestionView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/ContactBadge;->setExtraOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/android/quicksearchbox/ui/DefaultSuggestionView;->onFinishInflate()V

    .line 59
    const v0, 0x7f0f0001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/ContactBadge;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/ContactSuggestionView;->mQuickContact:Lcom/android/quicksearchbox/ui/ContactBadge;

    .line 60
    return-void
.end method
