.class Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;
.super Landroid/os/AsyncTask;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliasLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
        ">;>;"
    }
.end annotation


# instance fields
.field mList:Landroid/view/View;

.field mProgressBar:Landroid/widget/ProgressBar;

.field final synthetic this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;-><init>(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 13
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .local v8, certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$2200(Lcom/android/settings_ex/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    #calls: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->getAliases(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;
    invoke-static {v0, v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$2300(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;)Ljava/util/Set;

    move-result-object v7

    .line 251
    .local v7, aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v11

    .line 252
    .local v11, max:I
    const/4 v12, 0x0

    .line 253
    .local v12, progress:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v8           #certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    .local v9, certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    :try_start_1
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 255
    .local v4, alias:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v0, v0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$2200(Lcom/android/settings_ex/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;->getCertificate(Ljava/lang/String;Z)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 256
    .local v5, cert:Ljava/security/cert/X509Certificate;
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$2200(Lcom/android/settings_ex/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {v3}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;-><init>(Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;Ljava/lang/String;Ljava/security/cert/X509Certificate;Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 264
    .end local v4           #alias:Ljava/lang/String;
    .end local v5           #cert:Ljava/security/cert/X509Certificate;
    .end local v10           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v0

    move-object v8, v9

    .line 266
    .end local v7           #aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v9           #certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    .end local v11           #max:I
    .end local v12           #progress:I
    .restart local v8       #certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    :goto_1
    return-object v8

    .end local v8           #certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    .restart local v7       #aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9       #certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #max:I
    .restart local v12       #progress:I
    :cond_0
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v9

    .end local v9           #certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    .restart local v8       #certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    goto :goto_1

    .end local v7           #aliases:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #max:I
    .end local v12           #progress:I
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 236
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, certHolders:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;>;"
    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mCertHolders:Ljava/util/List;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$300(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$1900(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 282
    .local v0, content:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    iget-object v1, v1, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->this$0:Lcom/android/settings_ex/TrustedCredentialsSettings;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings;->access$1900(Lcom/android/settings_ex/TrustedCredentialsSettings;)Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 241
    .local v0, content:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v1

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mProgress:I
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$2100(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->mTab:Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;->access$2000(Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter;)Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;

    move-result-object v1

    #getter for: Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {v1}, Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;->access$800(Lcom/android/settings_ex/TrustedCredentialsSettings$Tab;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mList:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3
    .parameter "progressAndMax"

    .prologue
    .line 270
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 271
    .local v1, progress:I
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 272
    .local v0, max:I
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 236
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsSettings$TrustedCertificateAdapter$AliasLoader;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
