.class Lcom/applovin/impl/sdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/w;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/w;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/y;->a:Lcom/applovin/impl/sdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/y;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-object v1, p0, Lcom/applovin/impl/sdk/y;->a:Lcom/applovin/impl/sdk/w;

    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/sdk/AppLovinAdInternal;

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/w;->a(Lcom/applovin/impl/sdk/w;Lcom/applovin/impl/sdk/AppLovinAdInternal;)Lcom/applovin/impl/sdk/AppLovinAdInternal;

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->a:Lcom/applovin/impl/sdk/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/w;->c(Lcom/applovin/impl/sdk/w;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/z;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/z;-><init>(Lcom/applovin/impl/sdk/y;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/y;->a:Lcom/applovin/impl/sdk/w;

    invoke-static {v0}, Lcom/applovin/impl/sdk/w;->c(Lcom/applovin/impl/sdk/w;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/aa;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/sdk/aa;-><init>(Lcom/applovin/impl/sdk/y;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
