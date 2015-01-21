.class final Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;
.super Ljava/lang/Object;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewEntry"
.end annotation


# instance fields
.field public fourthDescription:Ljava/lang/String;

.field public fourthIntent:Landroid/content/Intent;

.field public geocode:Ljava/lang/CharSequence;

.field public ipText:Ljava/lang/String;

.field public label:Ljava/lang/CharSequence;

.field public final primaryDescription:Ljava/lang/String;

.field public final primaryIntent:Landroid/content/Intent;

.field public secondaryDescription:Ljava/lang/String;

.field public secondaryIcon:I

.field public secondaryIntent:Landroid/content/Intent;

.field public final text:Ljava/lang/String;

.field public thirdDescription:Ljava/lang/String;

.field public thirdIntent:Landroid/content/Intent;

.field public videoText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    const/4 v1, 0x0

    .line 1727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1719
    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    .line 1721
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryIcon:I

    .line 1723
    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1725
    iput-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1728
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->text:Ljava/lang/String;

    .line 1729
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->primaryIntent:Landroid/content/Intent;

    .line 1730
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->primaryDescription:Ljava/lang/String;

    .line 1731
    return-void
.end method


# virtual methods
.method public setFourthAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->ipText:Ljava/lang/String;

    .line 1767
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->fourthIntent:Landroid/content/Intent;

    .line 1768
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->fourthDescription:Ljava/lang/String;

    .line 1769
    return-void
.end method

.method public setSecondaryAction(ILandroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "icon"
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1734
    iput p1, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryIcon:I

    .line 1735
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 1736
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryDescription:Ljava/lang/String;

    .line 1737
    return-void
.end method

.method public setThirdAction(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0
    .parameter "text"
    .parameter "intent"
    .parameter "description"

    .prologue
    .line 1757
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->videoText:Ljava/lang/String;

    .line 1758
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->thirdIntent:Landroid/content/Intent;

    .line 1759
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->thirdDescription:Ljava/lang/String;

    .line 1760
    return-void
.end method
