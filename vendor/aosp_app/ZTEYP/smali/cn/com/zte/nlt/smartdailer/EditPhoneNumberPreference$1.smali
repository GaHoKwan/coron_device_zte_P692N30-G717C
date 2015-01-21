.class Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "EditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$1;->this$0:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 246
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$1;->this$0:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    #getter for: Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->access$000(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$1;->this$0:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    #getter for: Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->access$000(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$1;->this$0:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    #getter for: Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->access$100(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference$1;->this$0:Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;

    #getter for: Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->mPrefId:I
    invoke-static {v2}, Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;->access$200(Lcn/com/zte/nlt/smartdailer/EditPhoneNumberPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 257
    :cond_0
    return-void
.end method
